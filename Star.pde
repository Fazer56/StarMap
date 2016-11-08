class Star
{
  int hab;
  String starName;
  float distance;
  float xg;
  float yg;
  float zg;
  float absmag;
 
  //default constructor 
  Star()
  {    
  }
  
  
//table row constructor 
  Star(int hab, String starName, float distance, float xg, float yg, float zg, float absmag)
  {
  
    table = new Table();
    table.addColumn("hab", Table.INT);
    table.addColumn("starName", Table.STRING);
    table.addColumn("distance", Table.STRING);
    table.addColumn("xg", Table.FLOAT);
    table.addColumn("yg", Table.FLOAT);
    table.addColumn("zg", Table.FLOAT);
    table.addColumn("absmag", Table.FLOAT);
    
    TableRow row = table.addRow();
    
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