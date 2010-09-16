package flight.measurement
{
	import flash.display.DisplayObject;
	
	import flight.graphics.IDrawable;
	import flight.graphics.Rect;
	
	public function setSize(child:Object, width:Number, height:Number):void
	{
		if (child is IMeasurable) { // || child is IDrawable
			child.setSize(width, height);
		} else if (child != null) {
			child.width = width;
			child.height = height;
		}
	}
	
}