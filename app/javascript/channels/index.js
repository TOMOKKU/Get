// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)
/*
var a = "Hello"

doule a = 1
>>1.0

C lang
int a = "aa";
>>error
Js and Ruby
var a = "A"
>> a is string
*/
