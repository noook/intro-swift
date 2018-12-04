func cleanHobbits(arr: Array<String>) -> (first: String, last: String, reversed: Array<String>, length: Int) {
    let first: String = arr.first!;
    let last: String = arr.last!;
    var reversed : Array<String> = [];
    for item in arr {
        reversed.insert(item, at: 0);
    };
    return (first: first, last: last, reversed: reversed, length: reversed.count);
}
