package objects
{
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class GameBackground extends Sprite
	{
		private var bgLayer1:BgLayer;
		private var bgLayer2:BgLayer;
		private var bgLayer3:BgLayer;
		private var bgLayer4:BgLayer;
		
		private var _speed:Number;
		
		public function GameBackground()
		{
			super();
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage():void
		{
			this.removeEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);	
			
			bgLayer1 = new BgLayer(1);
			bgLayer1.parallax = 0.02;
			this.addChild(bgLayer1);
			
			bgLayer2 = new BgLayer(1);
			bgLayer2.parallax = 0.2;
			this.addChild(bgLayer2);
			
			bgLayer3 = new BgLayer(1);
			bgLayer3.parallax = 0.5;
			this.addChild(bgLayer3);
			
			bgLayer4 = new BgLayer(1);
			bgLayer4.parallax = 1;
			this.addChild(bgLayer4);
			
			this.addEventListener(Event.ENTER_FRAME, OnEnterFrame);
		}

		public function get speed():Number
		{
			return _speed;
		}

		public function set speed(value:Number):void
		{
			_speed = value;
		}

	}
}