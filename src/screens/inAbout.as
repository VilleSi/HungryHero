package screens
{
	
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class inAbout extends Sprite
	{
		
		public function inAbout()
		{
			super();
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
			
		}
		
		private function onAddedToStage(event:Event):void
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			drawAbout();
		}
		
		private function drawAbout():void
		{
			// TODO Auto Generated method stub
			
		}
		
		public function disposeTemporarily():void
		{
			this.visible = false;
		}
		
		public function initialize():void
		{
			this.visible = true;
		}
	}
}
	