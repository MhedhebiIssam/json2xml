# json2xml 
* convert json to xml  : JsonNode [json](https://nim-lang.org/0.19.0/json.html)  to [xmltree](https://nim-lang.org/docs/xmltree.html) type XmlNode   

# Install
* nimble install json2xml 

# Usage

* example
```nim 
import json , xmltree , jsontoxml 
var js = .......
var xml_from_json : XmlNode = json_to_xml(js)
echo xml_from_json 
```
* output
```xml
<json type="object">
  <json type="key" name="Name"><json type="string">voldemort</json></json>
  <json type="key" name="Designation"><json type="string">PHP Developer</json></json>
  <json type="key" name="Salary"><json type="int">98000</json></json>
  <json type="key" name="Age"><json type="int">27</json></json>
  <json type="key" name="Projects"><json type="list">
      <json type="index" value="0"><json type="object">
          <json type="key" name="Topic"><json type="string">Smart Ambulance</json></json>
          <json type="key" name="Category"><json type="string">Android Application</json></json>
          <json type="key" name="Months"><json type="int">2</json></json>
        </json></json>
      <json type="index" value="1"><json type="object">
          <json type="key" name="Topic"><json type="string">AST</json></json>
          <json type="key" name="Category"><json type="string">Embedded System</json></json>
          <json type="key" name="Months"><json type="int">1</json></json>
        </json></json>
      <json type="index" value="2"><json type="object">
          <json type="key" name="Topic"><json type="string">Plant Nursery</json></json>
          <json type="key" name="Category"><json type="string">Website</json></json>
          <json type="key" name="Months"><json type="int">3</json></json>
        </json></json>
    </json></json>
</json>
``` 
