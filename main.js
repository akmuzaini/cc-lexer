var peg = require('pegjs')
var fs = require('fs')
const grammar = fs.readFileSync('./grammar.pegjs', 
                {encoding:'utf8',flag:'r'});
const data = fs.readFileSync('./input.txt',
            {encoding:'utf8', flag:'r'});
var parser = peg.generate(grammar)
var output = parser.parse(data)
console.log(output);