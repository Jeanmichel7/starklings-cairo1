// move_semantics2.cairo
// Make me compile without changing line 16 or moving line 13!
// Execute `starklings hint move_semantics2` or use the `hint` watch subcommand for a hint.

use array::ArrayTrait;
use debug::PrintTrait;

fn main() {
    let arr0 = ArrayTrait::new();

    let mut _arr1 = fill_arr(@arr0);

    // Do not change the following line!
    arr0.print();
}

fn fill_arr(arr: @Array<felt252>) -> Array<felt252> {
    let mut arr = arr.clone();

    let mut truc = arr.clone();
    truc.append(22);
    truc.append(44);
    truc.append(66);

    truc
}
