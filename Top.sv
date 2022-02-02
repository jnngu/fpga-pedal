`default_nettype none

/*
  Top Module for guitar pedal
    Instantiates all of the internal modules and connects them together
 */

module Top
(
  input  logic        CLOCK_50
  // TODO: figure out interface signals
);

adc_1_channel adc(.CLOCK(CLOCK_50),
                  .RESET(),
                  .CH0(),
                  .CH1(),
                  .CH2(),
                  .CH3(),
                  .CH4(),
                  .CH5(),
                  .CH6(),
                  .CH7(),
                  .ADC_SCLK(),
                  .ADC_CS_N(),
                  .ADC_DOUT(),
                  .ADC_DIN());

endmodule: Top