import Text "mo:base/Text";
import List "mo:base/List";
import Debug "mo:base/Debug";


actor DKeeper {

public type Note = {
  title :Text ;
  content :Text ;
 };

var notes : List.List<Note> = List.nil<Note>();

public func createNote(titleText: Text , contentText: Text) {  
  let newNote: Note ={
    title = titleText;
    content = contentText;
  };  
  notes:= List.push(newNote , notes);  
  Debug.print("From Backend: Note Added:");
  Debug.print(debug_show(notes));
};

public func removeNote(id: Int) {
  Debug.print("From Backend: Delete Note:");
};

public func readNotes(): async [Note] {
  //Debug.print("From Backend: Delete Note:");
  return List.toArray(notes);
};



};
