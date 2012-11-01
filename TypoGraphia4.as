package {
	
	import flash.display.Sprite;
	import flash.display.SimpleButton;
	import flash.display.MovieClip;
	import flash.display.Loader;
	import flash.net.URLRequest;
	import flash.net.FileReference;
    import flash.display.StageAlign;
    import flash.display.StageScaleMode;
    import flash.events.Event;
    import flash.events.MouseEvent;
    import flash.geom.Point;
	import flash.events.IEventDispatcher;
	
	import SampleMarker;

	import com.modestmaps.Map;
    import com.modestmaps.core.MapExtent;
    import com.modestmaps.events.*;
    import com.modestmaps.extras.MapControls;
    import com.modestmaps.geo.Location;
    import com.modestmaps.mapproviders.microsoft.*;  
	import com.modestmaps.mapproviders.yahoo.*;  
		
	public class TypoGraphia4 extends Sprite {
		
		private var intro:Boolean = true;
		
		private var txt:String;
		private var _loader:Loader;
		private var map:Map;
		public var zoomNum:Number = 10;
		private var req:URLRequest;  
		private var localRef:FileReference;  

		private var alphaLetter:String = "";
						
		public var loc:Location = new Location(35.784684, -78.633866);

		public function TypoGraphia4() {
			
			init();			
		}

		private function init():void {
				
			this.paperFrame.getChildByName("A_Button").addEventListener(MouseEvent.CLICK, alphaMoveCLICK);
			this.paperFrame.getChildByName("A_Button").addEventListener(MouseEvent.MOUSE_OVER, alphaMoveOVER);
			this.paperFrame.getChildByName("A_Button").addEventListener(MouseEvent.MOUSE_OUT, alphaMoveOUT);
			
			this.paperFrame.getChildByName("B_Button").addEventListener(MouseEvent.CLICK, alphaMoveCLICK);
			this.paperFrame.getChildByName("B_Button").addEventListener(MouseEvent.MOUSE_OVER, alphaMoveOVER);
			this.paperFrame.getChildByName("B_Button").addEventListener(MouseEvent.MOUSE_OUT, alphaMoveOUT);

			this.paperFrame.getChildByName("C_Button").addEventListener(MouseEvent.CLICK, alphaMoveCLICK);
			this.paperFrame.getChildByName("C_Button").addEventListener(MouseEvent.MOUSE_OVER, alphaMoveOVER);
			this.paperFrame.getChildByName("C_Button").addEventListener(MouseEvent.MOUSE_OUT, alphaMoveOUT);

			this.paperFrame.getChildByName("D_Button").addEventListener(MouseEvent.CLICK, alphaMoveCLICK);
			this.paperFrame.getChildByName("D_Button").addEventListener(MouseEvent.MOUSE_OVER, alphaMoveOVER);
			this.paperFrame.getChildByName("D_Button").addEventListener(MouseEvent.MOUSE_OUT, alphaMoveOUT);

			this.paperFrame.getChildByName("E_Button").addEventListener(MouseEvent.CLICK, alphaMoveCLICK);
			this.paperFrame.getChildByName("E_Button").addEventListener(MouseEvent.MOUSE_OVER, alphaMoveOVER);
			this.paperFrame.getChildByName("E_Button").addEventListener(MouseEvent.MOUSE_OUT, alphaMoveOUT);
			
			this.paperFrame.getChildByName("F_Button").addEventListener(MouseEvent.CLICK, alphaMoveCLICK);
			this.paperFrame.getChildByName("F_Button").addEventListener(MouseEvent.MOUSE_OVER, alphaMoveOVER);
			this.paperFrame.getChildByName("F_Button").addEventListener(MouseEvent.MOUSE_OUT, alphaMoveOUT);
			
			this.paperFrame.getChildByName("G_Button").addEventListener(MouseEvent.CLICK, alphaMoveCLICK);
			this.paperFrame.getChildByName("G_Button").addEventListener(MouseEvent.MOUSE_OVER, alphaMoveOVER);
			this.paperFrame.getChildByName("G_Button").addEventListener(MouseEvent.MOUSE_OUT, alphaMoveOUT);

			this.paperFrame.getChildByName("H_Button").addEventListener(MouseEvent.CLICK, alphaMoveCLICK);
			this.paperFrame.getChildByName("H_Button").addEventListener(MouseEvent.MOUSE_OVER, alphaMoveOVER);
			this.paperFrame.getChildByName("H_Button").addEventListener(MouseEvent.MOUSE_OUT, alphaMoveOUT);

			this.paperFrame.getChildByName("I_Button").addEventListener(MouseEvent.CLICK, alphaMoveCLICK);
			this.paperFrame.getChildByName("I_Button").addEventListener(MouseEvent.MOUSE_OVER, alphaMoveOVER);
			this.paperFrame.getChildByName("I_Button").addEventListener(MouseEvent.MOUSE_OUT, alphaMoveOUT);

			this.paperFrame.getChildByName("J_Button").addEventListener(MouseEvent.CLICK, alphaMoveCLICK);
			this.paperFrame.getChildByName("J_Button").addEventListener(MouseEvent.MOUSE_OVER, alphaMoveOVER);
			this.paperFrame.getChildByName("J_Button").addEventListener(MouseEvent.MOUSE_OUT, alphaMoveOUT);			

			this.paperFrame.getChildByName("K_Button").addEventListener(MouseEvent.CLICK, alphaMoveCLICK);
			this.paperFrame.getChildByName("K_Button").addEventListener(MouseEvent.MOUSE_OVER, alphaMoveOVER);
			this.paperFrame.getChildByName("K_Button").addEventListener(MouseEvent.MOUSE_OUT, alphaMoveOUT);
			
			this.paperFrame.getChildByName("L_Button").addEventListener(MouseEvent.CLICK, alphaMoveCLICK);
			this.paperFrame.getChildByName("L_Button").addEventListener(MouseEvent.MOUSE_OVER, alphaMoveOVER);
			this.paperFrame.getChildByName("L_Button").addEventListener(MouseEvent.MOUSE_OUT, alphaMoveOUT);

			this.paperFrame.getChildByName("M_Button").addEventListener(MouseEvent.CLICK, alphaMoveCLICK);
			this.paperFrame.getChildByName("M_Button").addEventListener(MouseEvent.MOUSE_OVER, alphaMoveOVER);
			this.paperFrame.getChildByName("M_Button").addEventListener(MouseEvent.MOUSE_OUT, alphaMoveOUT);

			this.paperFrame.getChildByName("N_Button").addEventListener(MouseEvent.CLICK, alphaMoveCLICK);
			this.paperFrame.getChildByName("N_Button").addEventListener(MouseEvent.MOUSE_OVER, alphaMoveOVER);
			this.paperFrame.getChildByName("N_Button").addEventListener(MouseEvent.MOUSE_OUT, alphaMoveOUT);

			this.paperFrame.getChildByName("O_Button").addEventListener(MouseEvent.CLICK, alphaMoveCLICK);
			this.paperFrame.getChildByName("O_Button").addEventListener(MouseEvent.MOUSE_OVER, alphaMoveOVER);
			this.paperFrame.getChildByName("O_Button").addEventListener(MouseEvent.MOUSE_OUT, alphaMoveOUT);
			
			this.paperFrame.getChildByName("P_Button").addEventListener(MouseEvent.CLICK, alphaMoveCLICK);
			this.paperFrame.getChildByName("P_Button").addEventListener(MouseEvent.MOUSE_OVER, alphaMoveOVER);
			this.paperFrame.getChildByName("P_Button").addEventListener(MouseEvent.MOUSE_OUT, alphaMoveOUT);
			
			this.paperFrame.getChildByName("Q_Button").addEventListener(MouseEvent.CLICK, alphaMoveCLICK);
			this.paperFrame.getChildByName("Q_Button").addEventListener(MouseEvent.MOUSE_OVER, alphaMoveOVER);
			this.paperFrame.getChildByName("Q_Button").addEventListener(MouseEvent.MOUSE_OUT, alphaMoveOUT);

			this.paperFrame.getChildByName("R_Button").addEventListener(MouseEvent.CLICK, alphaMoveCLICK);
			this.paperFrame.getChildByName("R_Button").addEventListener(MouseEvent.MOUSE_OVER, alphaMoveOVER);
			this.paperFrame.getChildByName("R_Button").addEventListener(MouseEvent.MOUSE_OUT, alphaMoveOUT);

			this.paperFrame.getChildByName("S_Button").addEventListener(MouseEvent.CLICK, alphaMoveCLICK);
			this.paperFrame.getChildByName("S_Button").addEventListener(MouseEvent.MOUSE_OVER, alphaMoveOVER);
			this.paperFrame.getChildByName("S_Button").addEventListener(MouseEvent.MOUSE_OUT, alphaMoveOUT);

			this.paperFrame.getChildByName("T_Button").addEventListener(MouseEvent.CLICK, alphaMoveCLICK);
			this.paperFrame.getChildByName("T_Button").addEventListener(MouseEvent.MOUSE_OVER, alphaMoveOVER);
			this.paperFrame.getChildByName("T_Button").addEventListener(MouseEvent.MOUSE_OUT, alphaMoveOUT);		
	
			this.paperFrame.getChildByName("U_Button").addEventListener(MouseEvent.CLICK, alphaMoveCLICK);
			this.paperFrame.getChildByName("U_Button").addEventListener(MouseEvent.MOUSE_OVER, alphaMoveOVER);
			this.paperFrame.getChildByName("U_Button").addEventListener(MouseEvent.MOUSE_OUT, alphaMoveOUT);
			
			this.paperFrame.getChildByName("V_Button").addEventListener(MouseEvent.CLICK, alphaMoveCLICK);
			this.paperFrame.getChildByName("V_Button").addEventListener(MouseEvent.MOUSE_OVER, alphaMoveOVER);
			this.paperFrame.getChildByName("V_Button").addEventListener(MouseEvent.MOUSE_OUT, alphaMoveOUT);
			
			this.paperFrame.getChildByName("W_Button").addEventListener(MouseEvent.CLICK, alphaMoveCLICK);
			this.paperFrame.getChildByName("W_Button").addEventListener(MouseEvent.MOUSE_OVER, alphaMoveOVER);
			this.paperFrame.getChildByName("W_Button").addEventListener(MouseEvent.MOUSE_OUT, alphaMoveOUT);

			this.paperFrame.getChildByName("X_Button").addEventListener(MouseEvent.CLICK, alphaMoveCLICK);
			this.paperFrame.getChildByName("X_Button").addEventListener(MouseEvent.MOUSE_OVER, alphaMoveOVER);
			this.paperFrame.getChildByName("X_Button").addEventListener(MouseEvent.MOUSE_OUT, alphaMoveOUT);

			this.paperFrame.getChildByName("Y_Button").addEventListener(MouseEvent.CLICK, alphaMoveCLICK);
			this.paperFrame.getChildByName("Y_Button").addEventListener(MouseEvent.MOUSE_OVER, alphaMoveOVER);
			this.paperFrame.getChildByName("Y_Button").addEventListener(MouseEvent.MOUSE_OUT, alphaMoveOUT);

			this.paperFrame.getChildByName("Z_Button").addEventListener(MouseEvent.CLICK, alphaMoveCLICK);
			this.paperFrame.getChildByName("Z_Button").addEventListener(MouseEvent.MOUSE_OVER, alphaMoveOVER);
			this.paperFrame.getChildByName("Z_Button").addEventListener(MouseEvent.MOUSE_OUT, alphaMoveOUT);		
			
			this.resetButton.addEventListener(MouseEvent.CLICK, resetIntroPage);
			
			MovieClip(this.paperFrame.getChildByName("largeViewer")).getChildByName("ArticleButton").addEventListener(MouseEvent.CLICK, alphaMoveCLICK);
			
			this.paperFrame.getChildByName("zipArchive").addEventListener(MouseEvent.CLICK, alphaMoveCLICK);
			this.paperFrame.getChildByName("zipArchive").addEventListener(MouseEvent.MOUSE_OVER, alphaMoveOVER);
			this.paperFrame.getChildByName("zipArchive").addEventListener(MouseEvent.MOUSE_OUT, alphaMoveOUT);
			
			_loader = new Loader();
			_loader.load(new URLRequest("graphics/INTRO_200b.jpg"));
			_loader.contentLoaderInfo.addEventListener(Event.COMPLETE, loadIntro);
			
		loadMap();
		setIntroImages()
		
		}
		
		private function loadIntro(ev:Event):void {
			
			paperFrame.imgViewer.addChild(_loader.content);
			paperFrame.imgViewer.gotoAndStop(10);
		}
		
		
		
private function completeHandler(ev:Event):void {
	paperFrame.imgViewer.addChild(_loader.content);
	}
		
 private function placeMarkers():void 
        {   
            // set default extent
         
	        	             	
            // Some sample data
            // In most cases, we would have loaded this from XML, or a web service.
            var markerpoints:Array = [
            	{ title:'A', loc:"35.786774,-78.6201383"},
	        	{ title:'B', loc:"35.786191, -78.663353"},
	        	{ title:'C', loc:"35.804291, -78.645705"},
	        	{ title:'D', loc:"35.770367, -78.652077"},
	        	{ title:'E', loc:"35.782423, -78.646059"},
	        	{ title:'F', loc:"35.761144, -78.61473"},
	        	{ title:'G', loc:"35.784951, -78.627841"},
            	{ title:'H', loc:"35.782714, -78.647067"},
	        	{ title:'I', loc:"35.801795,-78.629536"},
	        	{ title:'J', loc:"35.77915,-78.650833"},
	        	{ title:'K', loc:"35.787997, -78.63475"},
	        	{ title:'L', loc:"35.762458,-78.714943"},
	        	{ title:'M', loc:"35.768569, -78.617434"},
	        	{ title:'N', loc:"35.77814,-78.637878"},
	           	{ title:'O', loc:"35.793101, -78.639638"},
	        	{ title:'P', loc:"35.815622,-78.630728"},
	        	{ title:'Q', loc:"35.775538,-78.638044"},
	        	{ title:'R', loc:"35.778206,-78.647223"},
	        	{ title:'S', loc:"35.777496,-78.63511"},
	        	{ title:'T', loc:"35.855176, -78.681614"},
	        	{ title:'U', loc:"35.836915,-78.742162"},
            	{ title:'V', loc:"35.807646,-78.702669"},
	        	{ title:'W', loc:"35.773893, -78.620572"},
	        	{ title:'X', loc:"35.778237,-78.638817"},
	        	{ title:'Y', loc:"35.784794,-78.63055"},
	        	{ title:'Z', loc:"35.776983,-78.664673"}
	        ];
			
            var o:Object;
            
            // Now, we just loop through our data set, and place the markers
            for each (o in markerpoints) {
            	            	
            	// step 1 - create a marker
                var marker:SampleMarker = new SampleMarker();
                
                // step 2 - give it any custom app-specific data it might need
                marker.title = o.title;	
				MovieClip(marker.getChildAt(0)).gotoAndStop(o.title);
                // step 3 - create a location object
                //
                // if you have lat and long...
                //     var loc:Location = new Location (lat, long);
                //
                // but, we have a comma-separated lat/long pair, so...
                var loc:Location = Location.fromString( o.loc );
                
                // step 4 - put the marker on the map

                map.putMarker( loc, marker);
            }	      
        }

        private function onMarkerClick(e:MarkerEvent):void 
        {
            var marker:SampleMarker = e.marker as SampleMarker;
			MovieClip(this.paperFrame.getChildByName("largeViewer")).gotoAndStop(marker.title);
            MovieClip(this.paperFrame.getChildByName("largeViewer")["smallPictureViewer"]).gotoAndStop(marker.title);
			
			paperFrame.articleFrame.alpha = 0;
				//addChild(map);
			
				if(_loader.content != null) {
					paperFrame.imgViewer.removeChild(_loader.content);
					}
				paperFrame.imgViewer.gotoAndPlay(1);
			
				_loader = new Loader();
				_loader.load(new URLRequest("graphics/" + marker.title + "-300.jpg"));
				_loader.contentLoaderInfo.addEventListener(Event.COMPLETE, completeHandler);

			//trace("Marker Clicked:  " + marker.title + " " + e.location);
        }
		
		private function loadMap():void {
			map = new Map(202, 207, true, new MicrosoftHybridMapProvider());
			map.setCenterZoom(loc, zoomNum); // 19 is the highest, 11 is the inner beltline
			map.x = 18;
			map.y = 38;
		
			placeMarkers();
			
			map.addEventListener(MarkerEvent.MARKER_CLICK, onMarkerClick);
					
			MovieClip(this.paperFrame.getChildByName("mapGoing")).addChild(map);
			
			map.rotation = -5.3;
			
		}
		
		private function setIntroImages():void {

			//SimpleButton(this.getChildByName("resetButton")).addEventListener(MouseEvent.CLICK, resetIntroPage);
			MovieClip(paperFrame.getChildByName("largeViewer"))["openYellowSheet"].addEventListener(MouseEvent.CLICK, testingmouseclick);
			MovieClip(paperFrame.getChildByName("largeViewer")).gotoAndStop(130);
			MovieClip(paperFrame.getChildByName("largeViewer")["smallPictureViewer"]).gotoAndStop(130);
		}
		private function testingmouseclick(e:MouseEvent):void {
	
			if(e.currentTarget.currentFrame == 10) {
				MovieClip(paperFrame.getChildByName("largeViewer")).x = 875.3;
				MovieClip(paperFrame.getChildByName("mapGoing")).x = 922.6;
				e.currentTarget.gotoAndStop(1);
			}
			else {
				MovieClip(paperFrame.getChildByName("largeViewer")).x = 585.3;
				MovieClip(paperFrame.getChildByName("mapGoing")).x = 632.6;
				e.currentTarget.gotoAndStop(10);	
			}
		}
		private function resetIntroPage(e:MouseEvent):void {
			
			MovieClip(paperFrame.getChildByName("largeViewer")).gotoAndStop(130);
			MovieClip(paperFrame.getChildByName("largeViewer")["smallPictureViewer"]).gotoAndStop(130);
			
			this.paperFrame.imgViewer.removeChild(_loader.content);
			paperFrame.articleFrame.alpha = 0;
			
			this.paperFrame["frameNm"] = 5;
			this.paperFrame["navNum"] = 2;
			
			_loader = new Loader();
			_loader.load(new URLRequest("graphics/INTRO_200b.jpg"));
			_loader.contentLoaderInfo.addEventListener(Event.COMPLETE, completeHandler2);
				
			loadMap();
		}
		private function completeHandler2(e:Event):void {
			paperFrame.imgViewer.addChild(_loader.content);			
		}
		
private function alphaMoveCLICK(e:MouseEvent):void {

	if(e.currentTarget.name == "ArticleButton") {
		paperFrame.articleFrame.alpha = 1.0;
		paperFrame.articleFrame.gotoAndStop(this.paperFrame["frameNm"]);
		}
	else if(e.currentTarget.name == "zipArchive") {

		paperFrame.articleFrame.alpha = 1.0;
		this.paperFrame["frameNm"] = 180;
		this.paperFrame["navNum"] = 8;
		paperFrame.articleFrame.gotoAndStop(5);
		e.currentTarget.gotoAndStop(3);
		alphaLetter = e.target.name;
	}
			
	else {

		e.target.gotoAndStop(3);
		alphaLetter = e.target.name;
		
		txt = e.currentTarget.toString(); // Alpha_A
								
		paperFrame.articleFrame.alpha = 0;
			
		if(_loader.content != null) {
			paperFrame.imgViewer.removeChild(_loader.content);
			}
		paperFrame.imgViewer.gotoAndPlay(1);
			
		//if(MovieClip(paperFrame.getChildByName("largeViewer")).alpha > .1) {
		MovieClip(paperFrame.getChildByName("largeViewer")).gotoAndStop(txt.charAt(txt.length - 2));
		MovieClip(paperFrame.getChildByName("largeViewer")["smallPictureViewer"]).gotoAndStop(txt.charAt(txt.length - 2));
		//}
		_loader = new Loader();
		_loader.load(new URLRequest("graphics/" + txt.charAt(txt.length - 2) + "-300.jpg"));
		_loader.contentLoaderInfo.addEventListener(Event.COMPLETE, completeHandler);
				
		intro = false;
				
		switch (txt.charAt(txt.length - 2)) {
    		case "A":
       		map.setCenterZoom(Location.fromString("35.786774,-78.6201383"), 19);
       		break;

			case "B":
			map.setCenterZoom(Location.fromString("35.786191, -78.663353"), 19);
        	break;
    
					case "C":
        			map.setCenterZoom(Location.fromString("35.804291, -78.645705"), 19);
        			break;

					case "D":
        			map.setCenterZoom(Location.fromString("35.770367, -78.652077"), 19);
        			break;
	
					case "E":
        			map.setCenterZoom(Location.fromString("35.782423, -78.646059"), 19);
        			break;
  
					case "F":
        			map.setCenterZoom(Location.fromString("35.761144, -78.61473"), 19);
        			break;
					
					case "G":
        			map.setCenterZoom(Location.fromString("35.784951, -78.627841"), 19);
        			break;
					
					case "H":
        			map.setCenterZoom(Location.fromString("35.782714, -78.647067"), 19);
        			break;
					
					case "I":
        			map.setCenterZoom(Location.fromString("35.801795,-78.629536"), 19);
        			break;
					
					case "J":
        			map.setCenterZoom(Location.fromString("35.77915,-78.650833"), 19);
        			break;
					
					case "K":
        			map.setCenterZoom(Location.fromString("35.787997, -78.63475"), 19);
        			break;
					
					case "L":
        			map.setCenterZoom(Location.fromString("35.762458,-78.714943"), 19);
        			break;
					
					case "M":
        			map.setCenterZoom(Location.fromString("35.768569, -78.617434"), 19);
        			break;
					
					case "N":
        			map.setCenterZoom(Location.fromString("35.77814,-78.637878"), 19);
        			break;
					
					case "O":
        			map.setCenterZoom(Location.fromString("35.793101, -78.639638"), 19);
        			break;
					
					case "P":
        			map.setCenterZoom(Location.fromString("35.815622,-78.630728"), 19);
        			break;
					
					case "Q":
        			map.setCenterZoom(Location.fromString("35.775538,-78.638044"), 19);
        			break;
					
					case "R":
        			map.setCenterZoom(Location.fromString("35.778206,-78.647223"), 19);
        			break;
					
					case "S":
        			map.setCenterZoom(Location.fromString("35.777496,-78.63511"), 19);
        			break;
					
					case "T":
        			map.setCenterZoom(Location.fromString("35.855176, -78.681614"), 19);
        			break;
					
					case "U":
        			map.setCenterZoom(Location.fromString("35.836915,-78.742162"), 19);
        			break;
					
					case "V":
        			map.setCenterZoom(Location.fromString("35.807646,-78.702669"), 19);
        			break;
					
					case "W":
        			map.setCenterZoom(Location.fromString("35.773893, -78.620572"), 19);
        			break;
					
					case "X":
        			map.setCenterZoom(Location.fromString("35.778237,-78.638817"), 19);
        			break;
					
					case "Y":
        			map.setCenterZoom(Location.fromString("35.784794,-78.63055"), 19);
        			break;
					
					case "Z":
        			map.setCenterZoom(Location.fromString("35.776983,-78.664673"), 19);
        			break;
				}
			}
	
	}

private function alphaMoveOUT(e:MouseEvent):void {
	if((e.currentTarget.name != alphaLetter) && alphaLetter != "") {
		e.currentTarget.gotoAndStop(1);	
		this.paperFrame[alphaLetter].gotoAndStop(3);	
		}
	else if(alphaLetter == "") {
		e.currentTarget.gotoAndStop(1);	
	}
	}

private function alphaMoveOVER(e:MouseEvent):void {
	if((e.currentTarget.name != alphaLetter) && alphaLetter != "") {
		this.paperFrame[alphaLetter].gotoAndStop(1);
		}
	e.currentTarget.gotoAndStop(2);
		}

	}
}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	