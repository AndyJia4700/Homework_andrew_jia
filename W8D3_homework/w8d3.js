// function mysteryScoping1() {
//     var x = 'out of block';
//     if (true) {
//         var x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }

// mysteryScoping1()

// function mysteryScoping2() { 
//     const x = 'out of block';
//     if (true) {
//         const x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }

// mysteryScoping2()

// function mysteryScoping3() {  //syntax error
//     const x = 'out of block';
//     if (true) {
//         var x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }

// function mysteryScoping4() {
//     let x = 'out of block';
//     if (true) {
//         let x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }
// mysteryScoping4()

// function mysteryScoping5() { //syntax error
//     let x = 'out of block';
//     if (true) {
//         let x = 'in block';
//         console.log(x);
//     }
//     let x = 'out of block again';
//     console.log(x);
// }

function madLib((verb, adj, noun) {
    return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`
    // return "hello"
})

madLib("make", "best", "guac");

function fizzBuzz(array) {
    const fizzbuzzArr = []

    array.forEach(element => {
        if ((element % 3 === 0) ^ (element % 5 === 0)) {
            fizzbuzzArr.push(element)
        }
    });
    return fizzbuzzArr;
}
fizzBuzz([1,2,3,4,5,6,7,8,9,10])


function isPrime(n) {
    if (n < 2) {
        return false;
    }

    for (let i = 2; i < n; i++) {
        if (n % i === 0) {
            return false;
        }
    }
    return true;
}
isPrime (3)



