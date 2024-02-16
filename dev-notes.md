### goal

I want to convert objects from one case to another

that means I want ot pass a character vector, specify a case to convert to and convert all the objects in this case

### problem

I can assume that characters are in normal case (e.g., 'something like this'), however, sometimes it is useful to convert 
between cases, like from Camel to snake. 

this adds another layer of complexity:

I need to provide the original case time and the output. 

the orginal case will inform the transformation method. For example: 

from normal case to snake: 

- input = "something new" 
- output = "something_new"
- delimiter = " " -> "_"
- boundary  = " "
- case remains lower

from Camel to snake is more complicated:
- somethingNew to something_new
- delimiter = "" (does not exist)
- boundary = first uppercase letter after a lowercase letter
- case is converted to small
