import "package:flutter/material.dart";

void main(){
  runApp(const MaterialApp(
    home:MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}


class MyApp extends StatefulWidget {
  const MyApp({super.key}); 

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List image=["https://images.unsplash.com/photo-1615796153287-98eacf0abb13?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
      "https://images.unsplash.com/photo-1608848461950-0fe51dfc41cb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
      "https://images.unsplash.com/photo-1583083527882-4bee9aba2eea?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=477&q=80",
  "https://images.unsplash.com/photo-1606509779095-de8fd5187049?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(249, 252, 232, 239),
      appBar: AppBar(
        elevation: 0,
        backgroundColor:const Color.fromARGB(249, 247, 229, 235),

        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
            "https://img.freepik.com/free-photo/closeup-shot-red-rose-with-dew-top-black_181624-28079.jpg?w=740&t=st=1686141324~exp=1686141924~hmac=cfe8134c45ff3cdc92bbf015923f2abe96122dfc632ef790800a408fc5a0f985"
         ),
         radius: 20.6,
        ),
        title:const Text("Hi Kira!",
        style: TextStyle(color: Color.fromARGB(255, 19, 18, 18),fontSize: 15),
      ),
      actions: const [Icon(Icons.notifications,color: Colors.black)],
         ),
     body:  SingleChildScrollView(
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text("Tasks for today:",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
            ),
          const Row(
            children: [
              SizedBox(height: 5),
              Icon(Icons.star_outlined,color:Color.fromARGB(228, 233, 214, 44)),
              Text("5 available",style: TextStyle(fontSize:20,color: Color.fromARGB(235, 0, 0, 0) ),),
            ],
          ),
          const SizedBox(height: 30),
          const TextField(
            
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(18.9)),borderSide: BorderSide.none),
              hintText: "Search",
              hintStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.normal,color: Colors.black38),
              suffixIcon: Icon(Icons.search,size: 30,color: Colors.black38,)
            ),
          ),
          const SizedBox(height: 35),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Last connections",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
              ),
               Text("See all",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54),
              ),
            ],
          ),
          const SizedBox(
                height: 10,
              ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children :[
                   ...image.map((e) {
                     return Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: CircleAvatar(backgroundImage: NetworkImage(e),
                        radius: 30,
                       ),
                     );
                   },),
                  
                  const Padding(
                     padding:  EdgeInsets.all(8.0),
                     child: CircleAvatar(backgroundColor: Color.fromARGB(31, 158, 158, 158),
                     radius: 25,
                     child: Text("+5",style: TextStyle(color: Color.fromARGB(200, 0, 0, 0)),),
                     ),
                   ),
                  ],
                 ),
                ),
             const SizedBox(
                  width: 15,  
                ),
            Container(
              decoration:  BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
              
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Text("Active Projects",style: TextStyle(fontSize: 30,fontWeight: FontWeight.normal),),
                        Text("See all",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54),),
                      ],
                    ),
                    const SizedBox(height: 20),
                    
                  Container(
                      decoration:  BoxDecoration(borderRadius: BorderRadius.circular(20),border: BoxBorder.lerp(Border.all(color: Colors.black),Border.all(color: Colors.black),5.0)),
                    child:  const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Numero 10",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.black54),),
                                   Text("4h",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.black54),),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text("Blog and social posts",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Colors.black),),
                            SizedBox(height: 15),
                          Row(
                            children: [
                              Icon(Icons.info),
                              SizedBox(width: 5),
                              Text("Deadline is today",style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal,color: Colors.black54),),
                            ],
                           ),
                                          ],
                          ),
                    ),
                  ),
                    
                    const SizedBox(height: 15),
                    Container(
                       decoration:  BoxDecoration(borderRadius: BorderRadius.circular(20),border: BoxBorder.lerp(Border.all(color: Colors.black),Border.all(color: Colors.black),5.0)),
                      child: const Padding(
                        padding: EdgeInsets.all(17.8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Grace Aroma",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.black54),),
                                 Text("7d",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.black54),),
                              ],
                            ),
                            SizedBox(height: 15),
                            Text("New capmain review",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Colors.black),),
                           SizedBox(height: 15),
                        Row(
                          children: [
                            Icon(Icons.info),
                            SizedBox(width: 5),
                            Text("Deadline is today",style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal,color: Colors.black54),),
                          ],
                        ),
                          ],
                        ),
                      ),
                    ),
                   
                  ],
                ),
              ),
            ),
          const SizedBox(height:20),
          ],
         ),
       ),
     ),
     bottomNavigationBar: BottomNavigationBar(
      currentIndex: 0,
      items: const[ 
       BottomNavigationBarItem(icon:Icon(Icons.home,color: Colors.black,), label: ("Home"),),
       BottomNavigationBarItem(icon:Icon(Icons.people_rounded,color: Colors.black45,),label: ("People"),),
       BottomNavigationBarItem(icon:Icon(Icons.folder_copy,color: Colors.black45,),label: ("Folder"), ),
       BottomNavigationBarItem(icon:Icon(Icons.history,color: Colors.black45,),label: ("History"),)
       ],
      ),
    );
  }
}