class Star
{
  int hab;
  String starName;
  String distance;
  float xg;
  float yg;
  float zg;
  float absmag;
  color c;
 
  //default constructor 
  Star()
  {    
  }
  
 /* //paramterised
  Star(int hab, String party, String con, float returned, float claimed)
  {
    this.name = name;
    this.party = party;
    this.constituency = con;
    this.returned = 0;
    this.claimed = 0;
    
  }*/
  
  String toString()
  {
    return starName + "\t" + hab + "\t" + distance + "\t" + xg + "\t" + yg + "\t" + zg + "\t" + absmag ;
  
  }
  
  
}