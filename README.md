# T35_GPIO_TEST
## Project Purpose and Goal
This FPGA Project is used for testing the GPIO pins of the **T35 FPGA Module** created for the S100 Hobbyist community.
## Required equiment for this test includes:
1. T35 FPGA Module (available to S100Computers Members)
2. JTAG Programmer (available from [Digikey](https://www.digikey.com) and [Mouser](https://www.mouser.com) ):

    | Digikey Part No | Description         | Manf    | Manf Part No   |
    |-----------------|---------------------|---------|----------------|
    | 1188-1016-ND    | JTAG Adapter        | Olimex  | ARM-JTAG-20-10 |
    | 769-1106        | USB Adapter         | FTDI    | C232HM-DDHSL-0 |
    | S2021EC-10-ND   | Male to Male Header | Sullins | PRPC010DABN-RC |

    | Mouser Part No     | Description         | Manf     | Manf Part No   |
    |--------------------|---------------------|----------|----------------|
    | 909-ARM-JTAG-20-10 | JTAG Adapter        | Olimex   | ARM-JTAG-20-10 |
    | 895-C232HM-DDHSL-0 | USB Adapter         | FTDI     | C232HM-DDHSL-0 |
    | 649-77313-198-20LF | Male to Male Header | Amphenol | 77313-198-20LF |

3. An Oscilloscope or Frequency Counter
4. Patience!
## Cloning (Downloading)
*Note*: Because Efinity encodes the full path in the project XML file, it is best if you follow the same folder convention that I use here for the S100Projects FPGA Code, namely:
```html
    c:\S100Projects\T35_GPIO_TEST
```

Once downloaded, you will need to compile the project with the Efinity toolchain and then program it via the JTAG interface (see Efinix documentation).
After programming, each GPIO pin will be outputting one of eight divided down clocks.
