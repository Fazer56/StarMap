/* Name: Faoilean Fortune
  Student Number: C15380201
  Date: 08/11/2016

*/

void setup()
{
  size(800, 800);
  
  
  
  background(0);
  
  table = loadTable("HabHYG15ly.csv", "header");
  loadStar();
  printStar();
  
  
}




Table table;

ArrayList<Star> stars = new ArrayList<Star>();

void draw()
{
  drawGrid();
  drawStar();
 
  
}

//load data from the file
void loadStar()
{
  for(TableRow i : table.rows())
  {
    Star str;
    str = new Star();
    
    str.hab = i.getInt("Hab?");
    str.starName = i.getString("Display Name");
    str.distance = i.getFloat("Distance");
    str.xg = i.getFloat("Xg");
    str.yg = i.getFloat("Yg");
    str.zg = i.getFloat("Zg");
    str.absmag = i.getFloat("AbsMag");
   
      
    stars.add(str);
    
   // println(exp.total);
    
  }
  
}

//print the stars
void printStar()
{
  Star str;
  str = new Star();
  
  for(int i = 0; i < stars.size(); i++)
  {
    str = stars.get(i);
    println(str);
  }
  
  
}

//draw the grid
void drawGrid()
{
  Star str;
  str = new Star();
  
  float recW;
  float recH;
  int i = 0;
  int j = 0;
  float border = 50;
  recW = width/10;
  recH = height/10;
  
   for(i = 0; i < width - border; i+= recW)
   {
      for(j = 0; j< height - border; j+=recH)
      {
          noFill();
          stroke(233, 8, 250);
          rect(j, i , recW, recH);
             
        
      }
    }
   
  
}

//to plot the stars position on the grid
void drawStar()
{
  Star str;
  str = new Star();
  
  float starsize = width/scaleVal();
  float starmass = width/starVal();
  
  for(int i = 0; i < stars.size(); i++)
  {
    str = stars.get(i);
    stroke(255, 255, 0);
    line(str.xg * starsize, str.yg * starsize, str.xg * starsize + 20, str.yg * starsize + 20);
    line(str.xg * starsize + 20, str.yg * starsize, str.xg * starsize, str.yg * starsize + 20);
    noFill();
    stroke(255,0,0);
    ellipse(str.xg * starsize, str.yg * starsize, str.absmag /** starmass*/, str.absmag /** starmass*/);
    text(str.starName, str.xg * starsize, str.yg * starsize);
    
  }
  
}

float scaleVal()
{
  Star str;
  str = new Star();
  
  float max = 0;
  
  for(int i = 0; i < stars.size(); i++)
  {
    str = stars.get(i);
    if(str.distance > max)
    {
      max = str.distance;
      
    }
    
  }
  
 
  return max;
    
    
}

float starVal()
{
  Star str;
  str = new Star();
  
  float max = 0;
  
  for(int i = 0; i < stars.size(); i++)
  {
    str = stars.get(i);
    if(str.absmag > max)
    {
      max = str.absmag;
      
    }
    
  }
  
 
  return max;
    
  
}
 