package flight.components
{
	import legato.components.ScrollBarGraphic;
	
	import flight.behaviors.SlideBehavior;
	import flight.data.IRange;
	import flight.events.PropertyEvent;
	
	public class RangeBase extends Component
	{
		
		private var _position:IRange;
		
		[Bindable(event="positionChange")]
		public function get position():IRange { return _position; }
		public function set position(value:IRange):void {
			if (_position == value) {
				return;
			}
			PropertyEvent.dispatchChange(this, "position", _position, _position = value);
		}
		
		public function RangeBase()
		{
			skin = new ScrollBarGraphic();
			behaviors.addItem(new SlideBehavior(this));
		}
		
		/*protected function init():void
		{
			//var scrollBarSkin:ScrollBarSkin = new ScrollBarSkin();
			skin = new ScrollBarGraphic();
			var slideBehavior:SlideBehavior = new SlideBehavior(this);
			behaviors.slide = slideBehavior;
			var stepBehavior:StepBehavior = new StepBehavior(this);
			behaviors.step = stepBehavior;
//			position = scrollBarSkin.position = slideBehavior.position = stepBehavior.position;
		}
		*/
	}
}