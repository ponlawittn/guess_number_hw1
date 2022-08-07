import 'dart:io';
import 'dart:math';

void main() {
  var r = Random();
  var answer = r.nextInt(100);
  int count = 0;
  print('╔══════════════════════════════════════════');
  print('║             GUESS THE NUMBER             ');
  while(true){
    print('║──────────────────────────────────────────');
    stdout.write("║ Guess the number between 1 and 100: ");
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == answer) {
      stdout.write('║ ➜ $guess is CORRECT ❤, ');
      count++;
      break;
    }
    else if(guess==null){
      guess = int.tryParse(input);
    }else if(guess>100 || guess<=0 ){
      guess = int.tryParse(input);
    }
    else{
      if (guess > answer) {
        print('║ ➜ $guess is TOO HIGH ▲');
        count++;
      } else if (guess < answer) {
        print('║ ➜ $guess is TOO LOW ▼');
        count++;
      }
    }
  }

  if (count >= 1) {
    print('total guesses: $count');
    print('║──────────────────────────────────────────');
  }
  print('║                 THE END                  ');
  print('╚══════════════════════════════════════════');
}