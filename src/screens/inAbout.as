package screens
{
	
	import com.greensock.TweenLite;
	
	import events.NavigationEvent;
	
	import starling.core.Starling;
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class inAbout extends Sprite
	{
		private var bg:Image;
		private var title:Image;
		private var backBtn:Button;
		
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
			bg = new Image(Assets.getTexture("BgWelcome"));	
			this.addChild(bg);
			
			title = new Image(Assets.getAtlas().getTexture("welcome_title"));
			title.x = 440;
			title.y = 20;
			this.addChild(title);

			
			backBtn = new Button(Assets.getAtlas().getTexture("about_backButton"));
			backBtn.x = 500;
			backBtn.y = 260;
			this.addChild(backBtn);
			
	
			
			this.addEventListener(Event.TRIGGERED, onAboutClick);
		}
		
		private function onAboutClick(event:Event):void
		{
			var buttonClicked:Button = event.target as Button;
			if((event.target as Button)== backBtn)
			{
				this.dispatchEvent(new NavigationEvent(NavigationEvent.CHANGE_SCREEN, {id: "back"}, true));	
			}
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
	