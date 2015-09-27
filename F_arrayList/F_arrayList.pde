//import libraries
import ddf.minim.*;
import ddf.minim.signals.*;
import ddf.minim.analysis.*;

//import classes
ParticleSystem ps;
DataManager dm;
ColorManager cm;

//initialize: for general
int amount;
float radius = 120; 

//initialize: for music
Minim minim;
AudioPlayer audioPlayer;
FFT fft;
int BUFSIZE = 1024;
int specSize;
float bandwidth[];
String _filename = "Kaminari.aif";

void setup() {
  
  //environment
  size(640,640);
  colorMode(HSB, 360, 100, 100);
  smooth(4);
  background(0, 0, 100);
  frameRate(12);

  //initialize: for general
  dm = new DataManager("data.tsv");
  amount = dm.getRowCount();
  ps = new ParticleSystem( amount );
  cm = new ColorManager( amount );
  
  //initialize: for music
  minim = new Minim( this );
  audioPlayer = minim.loadFile( _filename, BUFSIZE);
  audioPlayer.play();
  fft = new FFT(audioPlayer.bufferSize(), audioPlayer.sampleRate());
  bandwidth = new float[ amount ];
  specSize = fft.specSize();

}

void draw() {
  
  fft.forward(audioPlayer.mix);
  
  for(int i = 0; i < amount; i++)
  {  
    float _b = fft.getBand(i);
    bandwidth[i] = map(_b, 0, 200, 0, 20);
    println(bandwidth[i]);
  }
  println("------");

  ps.runParticle();
}

void stop()
{
  audioPlayer.close();
  minim.stop();
  super.stop();
}