import 'package:flutter/material.dart';
import 'package:iinfinitecheck/models/Company.dart';

import '../utils/customcolors.dart';

class CompaniesPage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgrounds,
      appBar: AppBar(
        backgroundColor: CustomColors.header,
        title: Text('INFINITE CHECKLIST'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: companylist.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(companylist[index].name),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              // Navigate to the company details screen when a company is tapped
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CompanyDetailScreen(id: companylist[index].id,companyName: companylist[index].name),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class CompanyDetailScreen extends StatelessWidget {
  final String companyName;
  final int id;

  List<CompanyModel> modellist=[];

  CompanyDetailScreen({required this.id,required this.companyName});

  fetchData(){
    modellist=companyModelList.where((element) => element.company_id==id).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgrounds,
      appBar: AppBar(
        backgroundColor: CustomColors.header,
        title: Text(companyName),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Image.asset(
              // 'assets/${companyName.toLowerCase()}_image.jpg',
              'assets/flight.png',
              height: 130,
               width: 330,
              color: Colors.white,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: StreamBuilder<Object>(
              stream: fetchData(),
              builder: (context, snapshot) {
                return ListView(
                  children: [
                    for(int i=0;i<modellist.length;i++)
                      ListTile(
                      title: Text(modellist[i].modelName),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {
                        // Navigate to the detail page for ATR 42-500(Demo)
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(id: modellist[i].id,companyName: companyName, modelName: modellist[i].modelName),
                          ),
                        );
                      },
                    ),
                   
                  ],
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String companyName;
  final String modelName;
  final int id;

  List<ModelSpec> speclist=[];

  DetailPage({required this.id,required this.companyName, required this.modelName});

  fetchData(){
    speclist=modelSpecList.where((element) => element.model_id==id).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgrounds,
      appBar: AppBar(
        backgroundColor: CustomColors.header,
        title: Text('$companyName - $modelName'),
        centerTitle: true,
      ),
      body: StreamBuilder<Object>(
              stream: fetchData(),
              builder: (context, snapshot) {
                return ListView(
                  children: [
                    for(int i=0;i<speclist.length;i++)
                      ListTile(
                      title: Text(speclist[i].specName),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {
                        // Navigate to the detail page for ATR 42-500(Demo)
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FunctionPage(id: speclist[i].id, specName: speclist[i].specName),
                          ),
                        );
                      },
                    ),
                   
                  ],
                );
              }
            ),
    );
  }
}




class FunctionPage extends StatefulWidget {
  final String specName;
  final int id;


  FunctionPage({required this.id,required this.specName});

  @override
  State<FunctionPage> createState() => _FunctionPageState();
}

class _FunctionPageState extends State<FunctionPage> {
  List<SpecFunction> functionList=[];

  List<bool> checklist=[];

  fetchData(){
    functionList=specFunctionList.where((element) => element.spec_id==widget.id).toList();
    for(int i=0;i<functionList.length;i++){
      checklist.add(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgrounds,
      appBar: AppBar(
        backgroundColor: CustomColors.header,
        title: Text(widget.specName),
        centerTitle: true,
      ),
      body: StreamBuilder<Object>(
              stream: fetchData(),
              builder: (context, snapshot) {
                return ListView(
                  children: [
                    for(int i=0;i<functionList.length;i++)
                      ListTile(
                      title: Row(
                        children: [
                          Container(width: 50,color: checklist[i]?Colors.green:Colors.red,),
                          Text(functionList[i].funName,style: TextStyle(color: checklist[i]?Colors.green:Colors.red,),),
                        ],
                      ),
                      trailing: Text(functionList[i].value),
                      onTap: () {
                        // Navigate to the detail page for ATR 42-500(Demo)
                        checklist[i]=!checklist[i];
                        setState(() {
                          
                        });
                       
                      },
                    ),
                   
                  ],
                );
              }
            ),
    );
  }
}