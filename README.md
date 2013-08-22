# EventListener

A simple JavaScript event listner class, written in CoffeeScript.

### Example Usage
 ```javascript
//create functions to trigger
function print1 () {
	console.log('Printing 1');
}

function print2 () {
	console.log('Printing 2');
}

//Initialize a new EventListener object
var e = new EventListener();
//Assign print1 & print2 on "custom_event"
e.on('custom_event',print1).on('custom_event',print2);

//trigger the "custom_event"
e.trigger('custom_event');
//OUTPUT:
//Printing 1
//Printing 2

//Remove the "print1" event from "custom_event"
e.off('custom_event',print1);

//trigger "custom_event" again
e.trigger('custom_event'); 
//OUTPUT:
//Printing 2
 ```
	
	
### Methods
- `on(event_name,method)` :

  	Adds a function to be called when an event is triggered.
  	
  	Returns the EventListener object to allow for chaining.
	- **event_name** - [ _string_ ] _(required)_ - Name of the event to listen to.
	- **method** - [ _function_ ] - Function to call when the event is triggered.


- `trigger(event_name)` :

 	Trigger an event, causing the methods assigned to the event to execute.
 	
 	Returns true if methods were assigned and executed, else false.
 	
	- **event_name** - [ _string_ ] _(required)_ - Name of the event to triggrt.

- `off(callback)` :  
 	
  	Removes a function assigned to an event.
  	
  	Returns the true if an event was found and removed, else false.
	- **event_name** - [ _string_ ] _(required)_ - Name of the event.
	- **method** - [ _function_ ] - Function to remove from the event.
			
	
### License
MIT-License:

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.