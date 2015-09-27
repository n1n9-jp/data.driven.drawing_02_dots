/*
	color manager for HSB mode
*/

class ColorManager {
  
	color[] colorArray;

	ColorManager( int _amount) {
        colorArray = new color[_amount];

	    for (int i=0; i<_amount; i++) {
	    	colorArray[i] = color(i*40, 100, 100);
	    }
	}

	color getColor(int _index) {
		return colorArray[_index];
	}

 
}