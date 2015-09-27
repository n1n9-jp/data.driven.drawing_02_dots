/*
  data manager
*/

class DataManager {

  Table table;
  
  DataManager(String _filename) {
      table = loadTable(_filename, "header, tsv");
  }

  int getRowCount() {
    return table.getRowCount();
  }

  float getR(int _index) {
    return table.getFloat(_index, "r");
  }

  int getColor(int _index) {
    return table.getInt(_index, "color");
  }
}