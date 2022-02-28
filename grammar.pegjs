start
    = Term+

Term
    = w: word ws {return w}
    / d: digits ws {return d}
    / c: string ws {return c}

string
    = (["]str["]) {return {type:"T_string",value: text()}}
    / ([']str[']) {return {type:"T_string",value: text()}}

str
    = (word / digits)* {return text()}

word
    = letter+ { return {type:"T_WORD",value:text()}}

letter "letter"
    = [a-zA-Z] {return text()}

digits
    = digit+ { return {type: "T_DIGITS" , value: text()}}

digit "digit"
    = [0-9] {return text()}

ws
    = [ \t\n\r]*