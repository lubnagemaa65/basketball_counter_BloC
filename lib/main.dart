import 'package:bas/cubit/counter_states.dart';
import 'package:bas/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(PointsCounter());
}
    
class PointsCounter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (BuildContext context)=>CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
       ),
    );
  }
}
class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit,CounterState>(
      builder: (BuildContext context, state) { 
        return Scaffold(
          
            appBar: AppBar(
              
              title: Text(
                "Points-Counter",
                
                ),
                backgroundColor: Colors.orange,
              ),
            body: Column(
            
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 500,
                      child: Column(
                        children:[
                          Text("Team A",style:TextStyle(fontSize: 32)),
                          Text("${BlocProvider.of<CounterCubit>(context).teamAPoints}",style:TextStyle(fontSize: 150)),
                          const Spacer(flex:1),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                            ),
                            onPressed: (){
                             
                            BlocProvider.of<CounterCubit>(context).
                            teamIncreament(team: 'A', buttonNumber: 1) ;
                            }, 
                          child: Text("Add 1 Point",style:TextStyle(fontSize: 18,color: Colors.black))),
                          
                          const Spacer(flex:1),
                           ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                            ),
                            onPressed: (){
                               BlocProvider.of<CounterCubit>(context)
                                .teamIncreament(team: 'A', buttonNumber: 2);
                            }, 
                          child:
                           Text("Add 2 Points",style:TextStyle(fontSize: 18,color: Colors.black))),
                          const Spacer(flex:1),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                            ),
                            onPressed: (){
                               BlocProvider.of<CounterCubit>(context)
                                .teamIncreament(team: 'A', buttonNumber: 3);
                            }, 
                          child:
                          Text("Add 3 Points",style:TextStyle(fontSize: 18,color: Colors.black))),
                          const Spacer(flex:12),
                        ]
                      ),
                    ),
                    Container(
                      height: 500,
                      child: VerticalDivider(color: Colors.grey,
                      thickness: 1,
                      indent: 50,
                      endIndent: 50,),
                    ),
                     Container(
                       height: 500,
                       child: Column(
                        children:[
                          Text("Team B",style:TextStyle(fontSize: 32)),
                      Text(
                          "${BlocProvider.of<CounterCubit>(context).teamBPoints}",
                          style: TextStyle(fontSize: 150)),
                          const Spacer(flex:1),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                            ),
                            onPressed: (){
                                BlocProvider.of<CounterCubit>(context)
                                .teamIncreament(team: 'B', buttonNumber: 1);
                            }, 
                          child: Text("Add 1 Point",style:TextStyle(fontSize: 18,color: Colors.black))),
                          
                          const Spacer(flex:1),
                           ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                            ),
                            onPressed: (){
                             BlocProvider.of<CounterCubit>(context)
                                .teamIncreament(team: 'B', buttonNumber: 2);
                            }, 
                          child:
                           Text("Add 2 Points",style:TextStyle(fontSize: 18,color: Colors.black))),
                          const Spacer(flex:1),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                            ),
                            onPressed: (){
                              BlocProvider.of<CounterCubit>(context)
                                .teamIncreament(team: 'B', buttonNumber: 3);
                            }, 
                          child:
                          Text("Add 3 Points",style:TextStyle(fontSize: 18,color: Colors.black))),
                          const Spacer(flex:12),
                        ]
                    ),
                     ),
                  ],
                ),
                ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                          ),
                          onPressed: (){
                           
                          }, 
                        child: Text("Reset",style:TextStyle(fontSize: 18,color: Colors.black))),
                        
              ],
            ),
            );
   
       }, 
      listener: (BuildContext context, Object? state) { 
    
       },
       );
    
  }
}