

import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "QizeApp",
      debugShowCheckedModeBanner:false,
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  const MyHomePage();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String,dynamic>>QuestionsAndAnswaers=[
    {
   'question':'What is your favarit sport ??!!',
   'answers':['Football','Tenis','Bsketball','Voleyball']
    },
      {
   'question':'What is your favarit anmail ??!!',
   'answers':['Cat','Dog','Camil','Hourses']
    },
   {
   'question':'What is your favarit Subject ??!!',
   'answers':['Coding','Math','Since','Reading']
    }
  ];

  List<int>listOfIndexOfAnswer=[2,3,0];
  
      int index=0;
      bool showResultMassege=false;
      int scor=0;
    
  @override
  Widget build(BuildContext context) {  
    final QuestionWithAnswaers =QuestionsAndAnswaers[index];
    print(QuestionWithAnswaers);
    return  Scaffold(
      appBar: AppBar(
        title:Text('QuizeApp'),
        actions: [Icon(Icons.add)],
        leading:IconButton(onPressed:(){},icon:Icon(Icons.menu),),
      ),
        body:Center(
          child: SingleChildScrollView(
           
            child:Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
               
                child:Column(
                   mainAxisAlignment:MainAxisAlignment.center,
                  crossAxisAlignment:CrossAxisAlignment.center,
                 
                // (children:QuestionsAndAnswaers.map((QuestionWithAnswaers) => Column(
                 
                  children:[
                    if(showResultMassege==false)...[
                    
                    Text(
                      QuestionWithAnswaers['question'],
                      style:TextStyle(
                       fontSize: 25,
                       fontWeight: FontWeight.w600,
                        
                       
                    ),),
                    SizedBox(height: 20,),
                    for(int i=0;i<QuestionWithAnswaers['answers'].length;i++)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                         
                        
                                
                          onPressed: (){
                           setState(() {
                          
                            if(i==listOfIndexOfAnswer[index])
                             scor++;
                            
                             if(index<QuestionsAndAnswaers.length-1)
                            index++;
                                    
                            else(
                             showResultMassege=true,
                          );
                         
                        
                          });
                          
                        
                        },
                         child:Text(QuestionWithAnswaers['answers'][i]), 
                                       
                         
                         
                         
                         ),
                      ),
                    )
            
                    ],
                   
                  
                    if(showResultMassege==true)...[
                        Text(scor>1?'Congratulation !!':'OOPPPSS!!',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700
                        ),),
                        SizedBox(height: 20,),
                        Text('Your scor is $scor / ${QuestionsAndAnswaers.length}',
                        style: TextStyle(
                          fontSize:20,
                          fontWeight: FontWeight.w600, 
                        ),),
                        TextButton(onPressed:(){
                          setState(() {
                            index=0;
                            showResultMassege=false;
                            scor=0;
                          });
                        }, child: Text('click to resubmit the Quize'))
                    
                  ],
                  ],
                    
                ),
                  
                ),
            )
              
              // ).toList(),
              ),
        )
         

          );
        
        

  }
}





