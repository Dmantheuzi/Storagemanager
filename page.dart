import 'package:flutter/material.dart';

import 'package:storagemanager/Animation.dart';



class StorageManager extends StatefulWidget {
  @override
  _StorageManagerState createState() => new _StorageManagerState();

}

class  _StorageManagerState  extends State<StorageManager>
    with  SingleTickerProviderStateMixin{

      TabController _tabController;

      @override
       void initState() {

         super.initState();
         _tabController =new TabController(vsync: this,initialIndex: 1,length: 4);
       }
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.redAccent,

      
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        title: Text('Storage Manager',style: TextStyle(color: Colors.redAccent)),
      elevation: 0.7,
      bottom: TabBar(
        
        labelColor: Colors.redAccent,
        unselectedLabelColor: Colors.white,
        indicatorSize: TabBarIndicatorSize.label,
        
        controller: _tabController,
        indicator: BoxDecoration(
         borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
         color: Colors.redAccent,

        ),
        
        tabs: <Widget>[
          new Tab(child: Align(
            alignment: Alignment.center,
            child: IconButton(icon: Icon(Icons.storage,color: Colors.redAccent),onPressed: (){},),
          ),
           ),
           
            new Tab(child: Align(

              alignment: Alignment.center,
              child: IconButton(icon: Icon(Icons.smartphone,color: Colors.redAccent),onPressed: (){},),
            ),
           ),
            new Tab(child: Align(
              alignment: Alignment.center,
              child: IconButton(icon: Icon(Icons.sync,color: Colors.redAccent,),onPressed: (){},),
              
            ),
           ),
          
    

        ],
        ),
        

        
        actions: <Widget>[
          IconButton(icon: Icon(Icons.lightbulb_outline,color: Colors.redAccent,),onPressed: (){
            showDialog(context: context,
            builder: (context) {
               return new AlertDialog(
      
                 title: new Text('How to Use'),
                 content: new Text('Loading.......'),
                 actions: <Widget>[
                   new MaterialButton(
                     onPressed: (){
                       Navigator.of(context).popAndPushNamed('');
                     },
                     child: new Text("Close")
                     
                     
                    

                 

                   ),]
                                                      
              );
            }
                 
            );
          },
          ),
        ],
      ),
      floatingActionButton: IconButton(icon: Icon(Icons.sd_storage,color:Colors.blueAccent
      ),onPressed: (){showDialog(context: context,builder: (context) {
        return new AlertDialog(
           title: new Text('Sync Phones Libary',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 12.0)),
      content: IconButton(icon: Icon(Icons.sync,),onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> ColorLoader3()));},
      ),
       actions: <Widget>[
                   new MaterialButton(
                     onPressed: (){
                       Navigator.of(context).popAndPushNamed('');
                     },
                     child: new Text("Close")
                     
                     
                    

                 

                   ),]

        );

      }
      );},
      ),
     
      
    );
  }
}





class FloatingAction23x extends StatefulWidget {
  @override
  _FloatingAction23xState createState() => _FloatingAction23xState();
}

class _FloatingAction23xState extends State<FloatingAction23x> {
  @override
  Widget build(BuildContext context) {
    return new AlertDialog(
      
      title: new Text('Sync Phones Libary',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 12.0)),
      content: IconButton(icon: Icon(Icons.sync,),onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> ColorLoader3()));},
      ),
       actions: <Widget>[
                   new MaterialButton(
                     onPressed: (){
                       Navigator.of(context).popAndPushNamed('');
                     },
                     child: new Text("Close")
                     
                     
                    

                 

                   ),]
  
    
    );
  }
}









