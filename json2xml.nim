import json ,  xmltree 



proc json2xml*(jsnode : JsonNode ) : XmlNode   = 
    var chid_str = newElement("json")
    case jsnode.kind : 
        of JString : 
            chid_str.attrs = {"type" : "string"}.toXmlAttributes
            chid_str.add(newText(jsnode.getStr()))

        of  JInt : 
            chid_str.attrs = {"type" : "int"}.toXmlAttributes
            chid_str.add(newText($(jsnode.getInt())))

        of JFloat : 
            chid_str.attrs = {"type" : "float" }.toXmlAttributes
            chid_str.add(newText($(jsnode.getFloat())))

        of JBool : 
            chid_str.attrs = {"type" : "bool"}.toXmlAttributes
            chid_str.add(newText($(jsnode.getBool())))

        of JNull : 
            chid_str.attrs = {"type" : "null"}.toXmlAttributes
            chid_str.add(newText("null"))

        of JObject : 
            chid_str.attrs = {"type" : "object"}.toXmlAttributes
            for sub_child in jsnode.keys()  : 
                var dict_node =  newElement("json") 
                dict_node.attrs = {"type" : "key" , "name" : sub_child }.toXmlAttributes
                dict_node.add(json2xml(jsnode[sub_child]))
                chid_str.add(dict_node)

        of JArray : 
            chid_str.attrs = {"type" : "list"}.toXmlAttributes
            var i  = 0 
            for sub_child in jsnode   : 
                var dict_node =  newElement("json") 
                dict_node.attrs = {"type" : "index" , "value" : $(i) }.toXmlAttributes
                dict_node.add(json2xml(sub_child))
                chid_str.add(dict_node)
                i += 1 
    return  chid_str