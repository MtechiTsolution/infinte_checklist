

class Company{
  final int id;
  final String name;
  Company(this.id,this.name);
  
}

class CompanyModel{
  final int id;
  final int company_id;
  final String modelName;
  CompanyModel(this.id,this.company_id,this.modelName);
  
}

class ModelSpec{
  final int id;
  final int model_id;
  final String specName;
  ModelSpec(this.id,this.model_id,this.specName);
  
}

class SpecFunction{
  final int id;
  final int spec_id;
  final String funName;
  final String value;
  SpecFunction(this.id,this.spec_id,this.funName,this.value);
  
}


//      dummy data


//           companies
List<Company> companylist=[
Company(1, "Airbus"),
Company(2, "Boeing"),
Company(3, "Bombardier"),
Company(4, "Cessna"),
Company(5, "ClubCrafters"),
Company(6, "Daher"),
Company(7, "Embraer"),
Company(8, "Fairchild Republic"),
Company(9, "Lockheed Martin"),
Company(10, "Macdonnell Douglas"),
];

//         Company Models

List<CompanyModel> companyModelList=[
  CompanyModel(1, 1, "modelName1"),
  CompanyModel(2, 1, "modelName2"),
  CompanyModel(3, 1, "modelName3"),
  CompanyModel(4, 1, "modelName4"),
];


//        Model Specs

List<ModelSpec> modelSpecList=[
  ModelSpec(1, 1, "specName1"),
  ModelSpec(2, 1, "specName2"),
  ModelSpec(3, 1, "specName3"),
];


//     SpecFunctions


List<SpecFunction> specFunctionList=[
  SpecFunction(1, 1, "funName1", "value"),
  SpecFunction(2, 1, "funName2", "value"),
  SpecFunction(3, 1, "funName3", "value")
];