package {
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.net.URLRequest;
	import flash.net.URLLoader;
	import flash.events.Event;
	import flash.text.TextField;
	import flash.text.TextFormat;

	public class Hybridizer extends Sprite {
		
		private var l:Loader = new Loader();
		private var w:Number;
		private var h:Number;
		private var bitmapData:BitmapData;
		private var bitmap:Bitmap;
		private var counter:Number;
		private var str:String;
		private var r:Number = 2;
		private var d:Number = 3;
		
		public function Hybridizer() {

			l.load(new URLRequest("Z.JPG"));
			l.contentLoaderInfo.addEventListener(Event.COMPLETE, generateHybridText);
			
			str = "Kirby Derby";
		
		}
		
		private function generateHybridText(e:Event = null):void {
			
			counter = 0;

			w = l.width;
			h = l.height;
			
			bitmapData = new BitmapData(w,h);
			bitmap = new Bitmap(bitmapData);

			bitmapData.draw(l);
			
			for(var j:int = 0; j < bitmap.height; j += r) {
				
				for(var i:int = 0; i < bitmap.width; i += r) {
					
					var tf:TextFormat = new TextFormat();
					tf.color = bitmapData.getPixel(i,j);
					tf.font = "Arial";
					
					if(bitmapData.getPixel(i,j) <= 15000000) {
						tf.size = 16;
					}
					else {
						tf.size = 8;
					}
					
					var txt:TextField = new TextField();
					txt.x = i * d;
					txt.y = j * d;
					txt.text = str.charAt(counter);
					
					if(counter >= str.length) {
						counter = 0;
					}
					else {
						counter += 1;
					}
					txt.setTextFormat(tf);
					txt.autoSize = "center";
					
					addChild(txt);
				}
			}
		}
	}
}