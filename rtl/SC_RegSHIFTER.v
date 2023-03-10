/*######################################################################
//#	G0B1T: HDL EXAMPLES. 2018.
//######################################################################
//# Copyright (C) 2018. F.E.Segura-Quijano (FES) fsegura@uniandes.edu.co
//# 
//# This program is free software: you can redistribute it and/or modify
//# it under the terms of the GNU General Public License as published by
//# the Free Software Foundation, version 3 of the License.
//#
//# This program is distributed in the hope that it will be useful,
//# but WITHOUT ANY WARRANTY; without even the implied warranty of
//# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//# GNU General Public License for more details.
//#
//# You should have received a copy of the GNU General Public License
//# along with this program.  If not, see <http://www.gnu.org/licenses/>
//####################################################################*/
//=======================================================
//  MODULE Definition
//=======================================================
module SC_RegSHIFTER #(parameter RegSHIFTER_DATAWIDTH=8)(
	//////////// OUTPUTS //////////
	SC_RegSHIFTER_data_OutBUS,

	//////////// INPUTS //////////
	SC_RegSHIFTER_CLOCK_50,
	SC_RegSHIFTER_shiftselection_In,
);
//=======================================================
//  PARAMETER declarations
//=======================================================

//=======================================================
//  PORT declarations
//=======================================================
output		[RegSHIFTER_DATAWIDTH-1:0]	SC_RegSHIFTER_data_OutBUS;// random val
input		SC_RegSHIFTER_CLOCK_50;// clock
input		[7:0] SC_RegSHIFTER_shiftselection_In=0;//  semilla 

//=======================================================
//  REG/WIRE declarations
//=======================================================
reg [RegSHIFTER_DATAWIDTH-1:0] RegSHIFTER_Register;
reg [RegSHIFTER_DATAWIDTH-1:0] RegSHIFTER_Signal;
//=======================================================
//  Structural coding
//=======================================================
//INPUT LOGIC: COMBINATIONAL
always @(posedge SC_RegSHIFTER_CLOCK_50)
begin
		RegSHIFTER_Signal = RegSHIFTER_Register << 1'b1;
		SC_RegSHIFTER_data_OutBUS = RegSHIFTER_Signal ^ RegSHIFTER_Signal[5];
		
	end	
//STATE REGISTER: SEQUENTIAL

//=======================================================
//  Outputs
//=======================================================
//OUTPUT LOGIC: COMBINATIONAL

endmodule
