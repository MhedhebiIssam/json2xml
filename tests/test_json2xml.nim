import json , xmltree 
import ./../json2xml


proc main*(): cint =
    var js = %*  {
      "Name" : "voldemort",
      "Designation" : "PHP Developer",
      "Salary" : 98000,
      "Age":27,
      "Projects" : [
              {"Topic":"Smart Ambulance","Category":"Android Application","Months":2},
              {"Topic":"AST","Category":"Embedded System","Months":1},
              {"Topic":"Plant Nursery","Category":"Website","Months":3}
      ]
    }
    echo json2xml(js)


discard main()