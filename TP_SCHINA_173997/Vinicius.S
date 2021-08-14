
/*
 * Vinicius.S
 *
 * Created: 14/08/2021 16:16:44
 *  Author: User
 */ 
 #include <avr/io.h>

 .global tarefa
 tarefa: 

 INICIO:
      
ldi r16, 0b00000000 
out DDRB, r16 
ldi r16, 0b11111111  
out DDRC, r16 
ldi r16, 0b00000000
out DDRD, r16 

ldi r16, 0b00001111
out PORTB, r16
ldi r16, 0b11110000
out PORTC, r16
ldi r16, 0b11110000
out PORTD, r16
 
LOOP:
      
ldi r16, 0b11110000
out PORTD, r16
ldi r16, 0b00001111
out PORTD, r16
   rjmp LOOP                
      

