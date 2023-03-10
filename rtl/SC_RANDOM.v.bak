module SC_RANDOM #(parameter RANDOM_DATAWIDTH=8) (

    ///OUTPUT/////
    SC_RANDOM_data_OutBUS,



    ///// INPUT/////
    SC_RANDOM_CLOCK_50,
    SC_RANDOM_RESET_IN,
);

// states declaration
localparam STATE_RESET_0									= 0;
localparam STATE_START_0									= 1;

//=======================================================
//  PORT declarations
//=======================================================
output		[RANDOM_DATAWIDTH-1:0]	SC_RANDOM_data_OutBUS;
input			SC_RANDOM_CLOCK_50;
input 			SC_STATEMACHINE_RESET_InHigh;
reg [RANDOM_DATAWIDTH-1:0] random_register;



always @(posedge SC_RANDOM_CLOCK_50, posedge SC_RANDOM_RESET_IN)
begin
    if (SC_RANDOM_RESET_IN == 1'b1)
        random_register <=0;
    else
        random_register <= $urandom_range(256)
end

//=======================================================
//  Outputs
//=======================================================
//OUTPUT LOGIC: COMBINATIONAL
assign SC_RANDOM_data_OutBUS = random_register;
endmodule