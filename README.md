# Sequence-Detector-using-FSM-Mealy-Machine-
Using Finite State Machine (Mealy Machine)  to detect a sequence of bit stream.
=> A circuit accepts a serial bit stream "x" as input and produces a serial bit stream "z"
  as output.
=> Whatever the bit pattern "0110" appears in the input stream, it output z = 1; at all other times
  z = 0;
=> Overlapping occurance of the pattern are also detected.
=> This is Mealy Machine
    Example: x: 010101101100101101110
             z: 000000010010000010000
