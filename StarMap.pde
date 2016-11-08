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
 
  
}


void loadStar()
{
  for(TableRow i : table.rows())
  {
    Star str;
    str = new Star();
    
    str.hab = i.getInt("Hab?");
    str.starName = i.getString("Display Name");
    str.distance = i.getString("Distance");
    str.xg = i.getFloat("Xg");
    str.yg = i.getFloat("Yg");
    str.zg = i.getFloat("Zg");
    str.absmag = i.getFloat("AbsMag");
   
      
    stars.add(str);
    
   // println(exp.total);
    
  }
  
}

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

void drawGrid()
{
  Star str;
  str = new Star();
  
  float recW;
  float recH;
  int i = 0;
  int j = 0;
  
  float border = 50;
  int parsecs = 10;
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

void drawStar()
{
  for(int i = 0; i < stars.size(); i++)
  {
    str = stars.get(i);
    noFill();
    rect(x, y, 
    
    
    
  }
  
}