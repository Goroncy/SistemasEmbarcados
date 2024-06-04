# Introdução-ao-pwm

 Modulação por Largura de Pulso ou PWM é a técnica que envolve a variação de largura de pulsos de um sinal elétrico, sendo assim o PWM pulsa rapidamente um sinal digital para o condutor transmitindo assim a informação pela largura de onde.

 # componentes-necessários

 - Arduino Nano
 - Botão
 - Bateria 5v
 - L293D
 - Motor
 - Resistor 10k

 # Esquemático

 [Schematic](schematics/pwm_controller_schematic.PDF)

 # Código-fonte
 ```
#include <Arduino.h>

int clickTimes=0; //Definição de variável de controle de estado
const int button = 2; // Inserção do pino do botão
int estado[5] = {0,64,127,191,255}; // Definição dos valores de estado

void setup() {
  pinMode(button,INPUT); // Setando o pin mode como INPUT
}
void loop() {
  if(digitalRead(button) == HIGH){
    analogWrite(9, estado[clickTimes]); //Define o estado para o motor
    clickTimes++; //Define o próximo estado
  }
  if(clickTimes == 5){
    clickTimes = 0; // Reseta os estados
  }
}
 ```

# Funcionamento do projeto

Projeto tem o intuito de definir a frequência do motor com base no botão sendo apertado e alterando os valores da frequência e seus usos, onde temos um oscilometro para medir as oscilações entre frequência e assim modificar as velocidades do motor.
