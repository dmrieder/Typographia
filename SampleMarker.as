﻿package {
	
    import flash.display.Sprite;
    import flash.events.MouseEvent;
    import flash.filters.BevelFilter;    

    /**
     * Sample Marker
     * @author David Knape
     */
    public class SampleMarker extends Sprite {
           
        private var _title : String;
        
        public function SampleMarker() {
        	 	
        	buttonMode = true;
        	mouseChildren = false;
        	tabEnabled = false;        	
        	//cacheAsBitmap = true;
        	mouseEnabled = true;

			// David's Flash example draws the marker
			// in the Flash environment
			// but need to draw something:
			
			// first a zero-alpha circle so the filter's bitmap cache doesn't mess things up
			graphics.beginFill(0xff0000,0);
			graphics.drawCircle(0, 0, 11);
			graphics.endFill();
			
			// now a red circle
/*			graphics.beginFill(0xff0000);
			graphics.drawCircle(0, 0, 3);
			graphics.endFill();*/
        	
        	filters = [ new BevelFilter(1,45,0xffffff,0.35,0x000000,0.35,2,2,1,1) ];
        	
        	addEventListener( MouseEvent.MOUSE_OVER, mouseOver );
        }
                
        public function get title () : String {
        	return _title;
        }
        
        public function set title (s:String) : void {
        	_title = s;
        }
                
        protected function mouseOver(e:MouseEvent) : void {
       		parent.swapChildrenAt(parent.getChildIndex(this), parent.numChildren - 1);
        }
        
        override public function toString() : String {
        	return '[SampleMarker] ' + title;
        }
    }
}