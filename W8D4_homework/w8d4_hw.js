function titleize(names, callback) {
    const titleized = names.map(name => `Mx. ${name} Jingleheimer Schmidt`);
    callback(titleized);
};

// titleize(["mary", "Brian", "Leo"], (names) => {
//     names.forEach(name => console.log(name));
// });


function Elephant(name, height, tricks) {
    this.name = name;
    this.height = height;
    this.tricks = tricks;
}

Elephant.prototype.trumpet = function() {
    console.log(`${this.name} the elephant goes 'phrRRRRRRRRR!!!!!!`);
};

Elephant.prototype.grow = function() {
    let sum = 0;
    sum = this.height + 12;
    return sum;
};

Elephant.prototype.addTrick = function(trick) {
    this.tricks.push(trick);
}

Elephant.prototype.play = function() {
    const randomTrick = this.tricks[Math.floor(Math.random() * this.tricks.length)];
    console.log(`${this.name} is ${randomTrick}`);
};

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);
let herd = [ellie, charlie, kate, micah];

// console.log(ellie.trumpet());

Elephant.paradeHelper = function(elephant) {
    console.log(`${elephant.name} is trotting by!`);
};

// Elephant.paradeHelper(micah)

function dinerBreakfast() {
    const foods = ["cheesy scrambled eggs"];
    
    const newfunction = (food) => {
        if (food) {
            foods.push(`and ${food}`);
            return `I'd like ${foods.join(" ")} please.`;
        }
        return `I'd like ${foods} please.`
    };

    return newfunction
}

let bfastOrder = dinerBreakfast();
console.log(bfastOrder());
console.log(bfastOrder("chocolate chip pancakes"));









