// window.setTimeout(function () {
//     alert('HAMMERTIME');
// }, 5000);

// function hammerTime(time) {
//     window.setTimeout(function() {
//         alert(`${time} is HAMMER TIME!`);
//     });
// }

// const readline = require('readline');

// const reader = readline.createInterface({
//     input: process.stdin,
//     output: process.stdout
// });

// function teaAndBiscuits() {

//     reader.question('Would you like some tea?')
//     function res1() {
//         console.log(`You replied ${res1}`);
//     }

//     reader.question('Would you like some biscuits?')
//     function res2() {
//         console.log(`You replied ${res2}`); 
//     }

//     const first = (res1 ==='yes') ? 'do' : 'don\'t';
//     const second = (res2 === 'yes') ? 'do' : 'don\'t';

//     console.log(`you ${first} want some tea and you ${second} want some biscuits.`);
//     reader.close();
// }

// function Cat() {
//     this.name = 'Markov';
//     this.age = 3;
// }

// function Dog() {
//     this.name = 'Noodles';
//     this.age = 4;
// }

// Dog.prototype.chase = function (cat) {
//     console.log(`My name is ${this.name} and I am chasing ${cat.name}! Woof!`);
// }

// const Markov = new Cat();
// const Noodles = new Dog();

// Noodles.chase(Markov);
// Noodles.chase.call(Markov, Noodles);
// Noodles.chase.apply(Markov,[Noodles]);
