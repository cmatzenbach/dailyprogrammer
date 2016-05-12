function maybeNumeric(input) {
    if (/ /.test(input))
        return input.split(' ').map(maybeNumeric);
    return isNaN(input) ? input : Number(input);
    if (x) { console.log("yes"); }
}


console.log(maybeNumeric(123));
console.log(maybeNumeric(44.234));
console.log(maybeNumeric(0x123N));
