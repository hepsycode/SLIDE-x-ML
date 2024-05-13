// 
// Politecnico di Milano
// Code created using PandA - Version: PandA 0.9.6 - Revision 891ec3caed502474cab0813cc4a9fc678deabaa5 - Date 2022-06-14T20:57:43
// bambu executed with: bambu -I/home/dews/Scrivania/bambu-hls/RESULTS/Bambu/5SGXEA7N2F45C1-Stratix-V/28x28/kruskal/includes/values_53 --simulate --simulator=VERILATOR --clock-period=5 --device-name=5SGXEA7N2F45C1 /home/dews/Scrivania/bambu-hls/cc4cs_bambu/benchmarkBasic/kruskal/thrd.c 
// 
// Send any bug to: panda-info@polimi.it
// ************************************************************************
// The following text holds for all the components tagged with PANDA_LGPLv3.
// They are all part of the BAMBU/PANDA IP LIBRARY.
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 3 of the License, or (at your option) any later version.
// 
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public
// License along with the PandA framework; see the files COPYING.LIB
// If not, see <http://www.gnu.org/licenses/>.
// ************************************************************************

`ifdef __ICARUS__
  `define _SIM_HAVE_CLOG2
`endif
`ifdef VERILATOR
  `define _SIM_HAVE_CLOG2
`endif
`ifdef MODEL_TECH
  `define _SIM_HAVE_CLOG2
`endif
`ifdef VCS
  `define _SIM_HAVE_CLOG2
`endif
`ifdef NCVERILOG
  `define _SIM_HAVE_CLOG2
`endif
`ifdef XILINX_SIMULATOR
  `define _SIM_HAVE_CLOG2
`endif
`ifdef XILINX_ISIM
  `define _SIM_HAVE_CLOG2
`endif

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>, Christian Pilato <christian.pilato@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module constant_value(out1);
  parameter BITSIZE_out1=1, value=1'b0;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = value;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module register_SE(clock, reset, in1, wenable, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input clock;
  input reset;
  input [BITSIZE_in1-1:0] in1;
  input wenable;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  
  reg [BITSIZE_out1-1:0] reg_out1 =0;
  assign out1 = reg_out1;
  always @(posedge clock)
    if (wenable)
      reg_out1 <= in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ARRAY_1D_STD_BRAM_NN_SDS_BUS_BASE(clock, reset, in1, in2, in3, out1, sel_LOAD, sel_STORE, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, Sin_Rdata_ram, Sout_Rdata_ram, S_data_ram_size, Sin_DataRdy, Sout_DataRdy, proxy_in1, proxy_in2, proxy_in3, proxy_sel_LOAD, proxy_sel_STORE, proxy_out1);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2, BITSIZE_in2=1, PORTSIZE_in2=2, BITSIZE_in3=1, PORTSIZE_in3=2, BITSIZE_sel_LOAD=1, PORTSIZE_sel_LOAD=2, BITSIZE_sel_STORE=1, PORTSIZE_sel_STORE=2, BITSIZE_S_oe_ram=1, PORTSIZE_S_oe_ram=2, BITSIZE_S_we_ram=1, PORTSIZE_S_we_ram=2, BITSIZE_out1=1, PORTSIZE_out1=2, BITSIZE_S_addr_ram=1, PORTSIZE_S_addr_ram=2, BITSIZE_S_Wdata_ram=8, PORTSIZE_S_Wdata_ram=2, BITSIZE_Sin_Rdata_ram=8, PORTSIZE_Sin_Rdata_ram=2, BITSIZE_Sout_Rdata_ram=8, PORTSIZE_Sout_Rdata_ram=2, BITSIZE_S_data_ram_size=1, PORTSIZE_S_data_ram_size=2, BITSIZE_Sin_DataRdy=1, PORTSIZE_Sin_DataRdy=2, BITSIZE_Sout_DataRdy=1, PORTSIZE_Sout_DataRdy=2, MEMORY_INIT_file="array.mem", n_elements=1, data_size=32, address_space_begin=0, address_space_rangesize=4, BUS_PIPELINED=1, BRAM_BITSIZE=32, PRIVATE_MEMORY=0, USE_SPARSE_MEMORY=1, HIGH_LATENCY=0, BITSIZE_proxy_in1=1, PORTSIZE_proxy_in1=2, BITSIZE_proxy_in2=1, PORTSIZE_proxy_in2=2, BITSIZE_proxy_in3=1, PORTSIZE_proxy_in3=2, BITSIZE_proxy_sel_LOAD=1, PORTSIZE_proxy_sel_LOAD=2, BITSIZE_proxy_sel_STORE=1, PORTSIZE_proxy_sel_STORE=2, BITSIZE_proxy_out1=1, PORTSIZE_proxy_out1=2;
  // IN
  input clock;
  input reset;
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  input [(PORTSIZE_in2*BITSIZE_in2)+(-1):0] in2;
  input [(PORTSIZE_in3*BITSIZE_in3)+(-1):0] in3;
  input [PORTSIZE_sel_LOAD-1:0] sel_LOAD;
  input [PORTSIZE_sel_STORE-1:0] sel_STORE;
  input [PORTSIZE_S_oe_ram-1:0] S_oe_ram;
  input [PORTSIZE_S_we_ram-1:0] S_we_ram;
  input [(PORTSIZE_S_addr_ram*BITSIZE_S_addr_ram)+(-1):0] S_addr_ram;
  input [(PORTSIZE_S_Wdata_ram*BITSIZE_S_Wdata_ram)+(-1):0] S_Wdata_ram;
  input [(PORTSIZE_Sin_Rdata_ram*BITSIZE_Sin_Rdata_ram)+(-1):0] Sin_Rdata_ram;
  input [(PORTSIZE_S_data_ram_size*BITSIZE_S_data_ram_size)+(-1):0] S_data_ram_size;
  input [PORTSIZE_Sin_DataRdy-1:0] Sin_DataRdy;
  input [(PORTSIZE_proxy_in1*BITSIZE_proxy_in1)+(-1):0] proxy_in1;
  input [(PORTSIZE_proxy_in2*BITSIZE_proxy_in2)+(-1):0] proxy_in2;
  input [(PORTSIZE_proxy_in3*BITSIZE_proxy_in3)+(-1):0] proxy_in3;
  input [PORTSIZE_proxy_sel_LOAD-1:0] proxy_sel_LOAD;
  input [PORTSIZE_proxy_sel_STORE-1:0] proxy_sel_STORE;
  // OUT
  output [(PORTSIZE_out1*BITSIZE_out1)+(-1):0] out1;
  output [(PORTSIZE_Sout_Rdata_ram*BITSIZE_Sout_Rdata_ram)+(-1):0] Sout_Rdata_ram;
  output [PORTSIZE_Sout_DataRdy-1:0] Sout_DataRdy;
  output [(PORTSIZE_proxy_out1*BITSIZE_proxy_out1)+(-1):0] proxy_out1;
  
  `ifndef _SIM_HAVE_CLOG2
    function integer log2;
       input integer value;
       integer temp_value;
      begin
        temp_value = value-1;
        for (log2=0; temp_value>0; log2=log2+1)
          temp_value = temp_value>>1;
      end
    endfunction
  `endif
  parameter n_byte_data = BRAM_BITSIZE/8;
  parameter n_bytes = n_elements*n_byte_data;
  parameter n_byte_on_databus = BRAM_BITSIZE/8;
  parameter n_mem_elements = n_bytes/(n_byte_on_databus) + (n_bytes%(n_byte_on_databus) == 0 ? 0 : 1);
  parameter nbit_addr = BITSIZE_in2 > BITSIZE_proxy_in2 ? BITSIZE_in2 : BITSIZE_proxy_in2;
  `ifdef _SIM_HAVE_CLOG2
    parameter nbit_read_addr = n_mem_elements == 1 ? 1 : $clog2(n_mem_elements);
    parameter nbits_address_space_rangesize = $clog2(address_space_rangesize);
    parameter nbits_byte_offset = n_byte_on_databus==1 ? 0 : $clog2(n_byte_on_databus);
  `else
    parameter nbit_read_addr = n_mem_elements == 1 ? 1 : log2(n_mem_elements);
    parameter nbits_address_space_rangesize = log2(address_space_rangesize);
    parameter nbits_byte_offset = n_byte_on_databus==1 ? 0 : log2(n_byte_on_databus);
  `endif
  parameter max_n_writes = PORTSIZE_sel_STORE;
  parameter max_n_reads = PORTSIZE_sel_LOAD;
  parameter max_n_rw = max_n_writes > max_n_reads ? max_n_writes : max_n_reads;
  
  wire [max_n_writes-1:0] bram_write;
  wire [max_n_writes-1:0] bram_write_temp;
  
  wire [nbit_read_addr*max_n_rw-1:0] memory_addr_a;
  wire [nbit_read_addr*max_n_rw-1:0] memory_addr_a_temp;
  
  wire [PORTSIZE_S_addr_ram-1:0] cs;
  wire [PORTSIZE_S_oe_ram-1:0] oe_ram_cs;
  wire [PORTSIZE_S_we_ram-1:0] we_ram_cs;
  wire [data_size*PORTSIZE_S_Wdata_ram-1:0] S_Wdata_ram_int;
  wire [data_size*max_n_writes-1:0] din_value_aggregated;
  wire [data_size*max_n_writes-1:0] din_value_aggregated_temp;
  reg [data_size*max_n_reads-1:0] dout_a =0;
  reg [data_size*max_n_reads-1:0] dout_a_registered =0;
  reg [data_size-1:0] dout_a_registered_0 =0;
  reg [data_size-1:0] dout_a_registered_1 =0;
  wire [nbit_addr*max_n_rw-1:0] tmp_addr;
  wire [nbit_addr*max_n_rw-1:0] relative_addr;
  integer index2;
  reg [PORTSIZE_S_we_ram-1:0] we_ram_cs_delayed =0;
  reg [PORTSIZE_S_oe_ram-1:0] oe_ram_cs_delayed =0;
  reg [PORTSIZE_S_oe_ram-1:0] oe_ram_cs_delayed_registered =0;
  reg [PORTSIZE_S_oe_ram-1:0] oe_ram_cs_delayed_registered1 =0;
  
  reg [data_size-1:0] memory [0:n_mem_elements-1] /* synthesis syn_ramstyle = "no_rw_check" */;
  
  initial
  begin
    $readmemb(MEMORY_INIT_file, memory, 0, n_mem_elements-1);
  end
  
  generate
    if(HIGH_LATENCY==2)
    begin
      (* syn_keep=1 *)reg [nbit_read_addr*max_n_rw-1:0] memory_addr_a_reg =0;
      (* syn_keep=1 *)reg [data_size*max_n_writes-1:0] din_value_aggregated_reg =0;
      (* syn_keep=1 *)reg [max_n_writes-1:0] bram_write_reg =0;
      always @ (posedge clock)
      begin
         memory_addr_a_reg <= memory_addr_a;
         bram_write_reg <= bram_write;
         din_value_aggregated_reg <= din_value_aggregated;
      end
      assign memory_addr_a_temp = memory_addr_a_reg;
      assign bram_write_temp = bram_write_reg;
      assign din_value_aggregated_temp = din_value_aggregated_reg;
    end
    else
    begin
      assign memory_addr_a_temp = memory_addr_a;
      assign bram_write_temp = bram_write;
      assign din_value_aggregated_temp = din_value_aggregated;
    end
  endgenerate
  
  generate
  genvar ind2;
  for (ind2=0; ind2<max_n_rw; ind2=ind2+1)
    begin : Lind2
      assign tmp_addr[(ind2+1)*nbit_addr-1:ind2*nbit_addr] = (proxy_sel_LOAD[ind2]||proxy_sel_STORE[ind2]) ? proxy_in2[(ind2+1)*BITSIZE_proxy_in2-1:ind2*BITSIZE_proxy_in2] : in2[(ind2+1)*BITSIZE_in2-1:ind2*BITSIZE_in2];
    end
  endgenerate
  
  generate
  genvar i3;
    for (i3=0; i3<PORTSIZE_S_addr_ram; i3=i3+1)
    begin : L3
      if(PRIVATE_MEMORY==0 && USE_SPARSE_MEMORY==0)
        assign cs[i3] = (S_addr_ram[(i3+1)*BITSIZE_S_addr_ram-1:i3*BITSIZE_S_addr_ram] >= (address_space_begin)) && (S_addr_ram[(i3+1)*BITSIZE_S_addr_ram-1:i3*BITSIZE_S_addr_ram] < (address_space_begin+address_space_rangesize));
      else if(PRIVATE_MEMORY==0)
        assign cs[i3] = S_addr_ram[(i3+1)*BITSIZE_S_addr_ram-1:i3*BITSIZE_S_addr_ram+nbits_address_space_rangesize] == address_space_begin[nbit_addr-1:nbits_address_space_rangesize];
      else
        assign cs[i3] = 1'b0;
    end
  endgenerate
  
  generate
  genvar i4;
    for (i4=0; i4<PORTSIZE_S_oe_ram; i4=i4+1)
    begin : L4
      assign oe_ram_cs[i4] = S_oe_ram[i4] & cs[i4];
    end
  endgenerate
  
  generate
  genvar i5;
    for (i5=0; i5<PORTSIZE_S_we_ram; i5=i5+1)
    begin : L5
      assign we_ram_cs[i5] = S_we_ram[i5] & cs[i5];
    end
  endgenerate
  
  generate
  genvar i6;
    for (i6=0; i6<max_n_rw; i6=i6+1)
    begin : L6
      if(PRIVATE_MEMORY==0 && USE_SPARSE_MEMORY==0 && i6< PORTSIZE_S_addr_ram)
        assign relative_addr[(i6+1)*nbit_addr-1:i6*nbit_addr] = ((i6 < max_n_writes && (sel_STORE[i6]==1'b1 || proxy_sel_STORE[i6]==1'b1)) || (i6 < max_n_reads && (sel_LOAD[i6]==1'b1 || proxy_sel_LOAD[i6]==1'b1))) ? tmp_addr[(i6+1)*BITSIZE_in2-1:i6*BITSIZE_in2]-address_space_begin: S_addr_ram[(i6+1)*BITSIZE_S_addr_ram-1:i6*BITSIZE_S_addr_ram]-address_space_begin;
      else if(PRIVATE_MEMORY==0 && i6< PORTSIZE_S_addr_ram)
        assign relative_addr[(i6)*nbit_addr+nbits_address_space_rangesize-1:i6*nbit_addr] = ((i6 < max_n_writes && (sel_STORE[i6]==1'b1 || proxy_sel_STORE[i6]==1'b1)) || (i6 < max_n_reads && (sel_LOAD[i6]==1'b1 || proxy_sel_LOAD[i6]==1'b1))) ? tmp_addr[(i6)*BITSIZE_in2+nbits_address_space_rangesize-1:i6*BITSIZE_in2] : S_addr_ram[(i6)*BITSIZE_S_addr_ram+nbits_address_space_rangesize-1:i6*BITSIZE_S_addr_ram];
      else if(USE_SPARSE_MEMORY==1)
        assign relative_addr[(i6)*nbit_addr+nbits_address_space_rangesize-1:i6*nbit_addr] = tmp_addr[(i6)*BITSIZE_in2+nbits_address_space_rangesize-1:i6*BITSIZE_in2];
      else
        assign relative_addr[(i6+1)*nbit_addr-1:i6*nbit_addr] = tmp_addr[(i6+1)*BITSIZE_in2-1:i6*BITSIZE_in2]-address_space_begin;
    end
  endgenerate
  
  generate
  genvar i7;
    for (i7=0; i7<max_n_rw; i7=i7+1)
    begin : L7_A
      if (n_mem_elements==1)
        assign memory_addr_a[(i7+1)*nbit_read_addr-1:i7*nbit_read_addr] = {nbit_read_addr{1'b0}};
      else
        assign memory_addr_a[(i7+1)*nbit_read_addr-1:i7*nbit_read_addr] = relative_addr[nbit_read_addr+nbits_byte_offset-1+i7*nbit_addr:nbits_byte_offset+i7*nbit_addr];
    end
  endgenerate
    
  generate
  genvar i13;
    for (i13=0; i13<PORTSIZE_S_Wdata_ram; i13=i13+1)
    begin : L13
      if (BITSIZE_S_Wdata_ram < data_size)
        assign S_Wdata_ram_int[data_size*(i13+1)-1:data_size*i13] = {{data_size-BITSIZE_S_Wdata_ram{1'b0}}, S_Wdata_ram[(i13+1)*BITSIZE_S_Wdata_ram-1:BITSIZE_S_Wdata_ram*i13]};
      else
        assign S_Wdata_ram_int[data_size*(i13+1)-1:data_size*i13] = S_Wdata_ram[data_size+BITSIZE_S_Wdata_ram*i13-1:BITSIZE_S_Wdata_ram*i13];
    end
  endgenerate
  
  generate
  genvar i14;
    for (i14=0; i14<max_n_writes; i14=i14+1)
    begin : L14
      if(PRIVATE_MEMORY==0 && i14 < PORTSIZE_S_Wdata_ram)
        assign din_value_aggregated[(i14+1)*data_size-1:i14*data_size] = proxy_sel_STORE[i14] ? proxy_in1[(i14+1)*BITSIZE_proxy_in1-1:i14*BITSIZE_proxy_in1] : (sel_STORE[i14] ? in1[(i14+1)*BITSIZE_in1-1:i14*BITSIZE_in1] : S_Wdata_ram_int[data_size*(i14+1)-1:data_size*i14]);
      else
        assign din_value_aggregated[(i14+1)*data_size-1:i14*data_size] = proxy_sel_STORE[i14] ? proxy_in1[(i14+1)*BITSIZE_proxy_in1-1:i14*BITSIZE_proxy_in1] : in1[(i14+1)*BITSIZE_in1-1:i14*BITSIZE_in1];
    end
  endgenerate
  
  generate
  genvar i11, i12;
    if(n_mem_elements==1)
    begin : single_element
      always @(posedge clock)
      begin
        for (index2=0; index2<max_n_reads; index2=index2+1)
        begin : L12_single_read
          if(HIGH_LATENCY==0)
          begin
            dout_a[data_size*index2+:data_size] <= memory[memory_addr_a_temp[nbit_read_addr*index2+:nbit_read_addr]];
          end
          else
          begin
            dout_a_registered[data_size*index2+:data_size] <= memory[memory_addr_a_temp[nbit_read_addr*index2+:nbit_read_addr]];
            dout_a[data_size*index2+:data_size] <= dout_a_registered[data_size*index2+:data_size];
          end
        end
        for (index2=0; index2<max_n_writes; index2=index2+1)
        begin : L12_single_write
          if(bram_write_temp[index2])
          memory[memory_addr_a_temp[nbit_read_addr*index2+:nbit_read_addr]] <= din_value_aggregated_temp[data_size*index2+:data_size];
        end
      end
    end
    else
    begin : multiple_elements
      if(max_n_rw ==2)
      begin
        always @(posedge clock)
        begin
          if(bram_write_temp[0])
            memory[memory_addr_a_temp[nbit_read_addr*(0+1)-1:nbit_read_addr*0]] <= din_value_aggregated_temp[data_size*0+:data_size];
          if(HIGH_LATENCY==0)
          begin
            dout_a[data_size*(0+1)-1:data_size*0] <= memory[memory_addr_a_temp[nbit_read_addr*(0+1)-1:nbit_read_addr*0]];
          end
          else
          begin
            dout_a_registered_0 <= memory[memory_addr_a_temp[nbit_read_addr*(0+1)-1:nbit_read_addr*0]];
            dout_a[data_size*(0+1)-1:data_size*0] <= dout_a_registered_0;
          end
        end
        always @(posedge clock)
        begin
          if(bram_write_temp[1])
            memory[memory_addr_a_temp[nbit_read_addr*(1+1)-1:nbit_read_addr*1]] <= din_value_aggregated_temp[data_size*1+:data_size];
          if(HIGH_LATENCY==0)
          begin
            dout_a[data_size*(1+1)-1:data_size*1] <= memory[memory_addr_a_temp[nbit_read_addr*(1+1)-1:nbit_read_addr*1]];
          end
          else
          begin
            dout_a_registered_1 <= memory[memory_addr_a_temp[nbit_read_addr*(1+1)-1:nbit_read_addr*1]];
            dout_a[data_size*(1+1)-1:data_size*1] <= dout_a_registered_1;
          end
        end
      end
      else
      begin
        //not supported
      end
    end    
  endgenerate
    
  generate
  genvar i20;
    for (i20=0; i20<max_n_reads; i20=i20+1)
    begin : L20
      assign out1[(i20+1)*BITSIZE_out1-1:i20*BITSIZE_out1] = dout_a[(i20+1)*data_size-1:i20*data_size];
      assign proxy_out1[(i20+1)*BITSIZE_proxy_out1-1:i20*BITSIZE_proxy_out1] = dout_a[(i20+1)*data_size-1:i20*data_size];
    end
  endgenerate
  
  generate
  genvar i16;
    for (i16=0; i16<PORTSIZE_S_oe_ram; i16=i16+1)
    begin : L16
      always @(posedge clock )
      begin
        if(reset == 1'b0)
          begin
            oe_ram_cs_delayed[i16] <= 1'b0;
            if(HIGH_LATENCY!=0) oe_ram_cs_delayed_registered[i16] <= 1'b0;
            if(HIGH_LATENCY == 2) oe_ram_cs_delayed_registered1[i16] <= 1'b0;
          end
        else
          begin
            if(HIGH_LATENCY==0)
              oe_ram_cs_delayed[i16] <= oe_ram_cs[i16] & (!oe_ram_cs_delayed[i16] | BUS_PIPELINED);
            else if(HIGH_LATENCY==1)
            begin
              oe_ram_cs_delayed_registered[i16] <= oe_ram_cs[i16] & ((!oe_ram_cs_delayed_registered[i16] & !oe_ram_cs_delayed[i16]) | BUS_PIPELINED);
              oe_ram_cs_delayed[i16] <= oe_ram_cs_delayed_registered[i16];
            end
            else
            begin
              oe_ram_cs_delayed_registered1[i16] <= oe_ram_cs[i16] & ((!oe_ram_cs_delayed_registered1[i16] & !oe_ram_cs_delayed_registered[i16]) | BUS_PIPELINED);
              oe_ram_cs_delayed_registered[i16] <= oe_ram_cs_delayed_registered1[i16];
              oe_ram_cs_delayed[i16] <= oe_ram_cs_delayed_registered[i16];
            end
          end
      end
    end
  endgenerate
  
  generate
  genvar i17;
    for (i17=0; i17<PORTSIZE_S_we_ram; i17=i17+1)
    begin : L17
      always @(posedge clock )
      begin
        if(reset == 1'b0)
          we_ram_cs_delayed[i17] <= 1'b0;
        else
          we_ram_cs_delayed[i17] <= we_ram_cs[i17] & !we_ram_cs_delayed[i17];
      end
    end
  endgenerate
  
  generate
  genvar i18;
    for (i18=0; i18<PORTSIZE_Sout_Rdata_ram; i18=i18+1)
    begin : L18
      if(PRIVATE_MEMORY==1)
        assign Sout_Rdata_ram[(i18+1)*BITSIZE_Sout_Rdata_ram-1:i18*BITSIZE_Sout_Rdata_ram] = Sin_Rdata_ram[(i18+1)*BITSIZE_Sin_Rdata_ram-1:i18*BITSIZE_Sin_Rdata_ram];
      else if (BITSIZE_Sout_Rdata_ram <= data_size)
        assign Sout_Rdata_ram[(i18+1)*BITSIZE_Sout_Rdata_ram-1:i18*BITSIZE_Sout_Rdata_ram] = oe_ram_cs_delayed[i18] ? dout_a[BITSIZE_Sout_Rdata_ram+i18*data_size-1:i18*data_size] : Sin_Rdata_ram[(i18+1)*BITSIZE_Sin_Rdata_ram-1:i18*BITSIZE_Sin_Rdata_ram];
      else
        assign Sout_Rdata_ram[(i18+1)*BITSIZE_Sout_Rdata_ram-1:i18*BITSIZE_Sout_Rdata_ram] = oe_ram_cs_delayed[i18] ? {{BITSIZE_S_Wdata_ram-data_size{1'b0}}, dout_a[(i18+1)*data_size-1:i18*data_size]} : Sin_Rdata_ram[(i18+1)*BITSIZE_Sin_Rdata_ram-1:i18*BITSIZE_Sin_Rdata_ram];
    end
  endgenerate
  
  generate
  genvar i19;
    for (i19=0; i19<PORTSIZE_Sout_DataRdy; i19=i19+1)
    begin : L19
      if(PRIVATE_MEMORY==0)
        assign Sout_DataRdy[i19] = (i19 < PORTSIZE_S_oe_ram && oe_ram_cs_delayed[i19]) | Sin_DataRdy[i19] | (i19 < PORTSIZE_S_we_ram && we_ram_cs_delayed[i19]);
      else
        assign Sout_DataRdy[i19] = Sin_DataRdy[i19];
    end
  endgenerate
  
  generate
  genvar i21;
    for (i21=0; i21<max_n_writes; i21=i21+1)
    begin : L21
      if(i21 < PORTSIZE_S_we_ram)
        assign bram_write[i21] = (sel_STORE[i21] || proxy_sel_STORE[i21] || we_ram_cs[i21]);
      else
        assign bram_write[i21] = (sel_STORE[i21] || proxy_sel_STORE[i21]);
    end
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ARRAY_1D_STD_BRAM_NN_SDS_BUS(clock, reset, in1, in2, in3, in4, out1, sel_LOAD, sel_STORE, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, Sin_Rdata_ram, Sout_Rdata_ram, S_data_ram_size, Sin_DataRdy, Sout_DataRdy, proxy_in1, proxy_in2, proxy_in3, proxy_sel_LOAD, proxy_sel_STORE, proxy_out1);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2, BITSIZE_in2=1, PORTSIZE_in2=2, BITSIZE_in3=1, PORTSIZE_in3=2, BITSIZE_in4=1, PORTSIZE_in4=2, BITSIZE_sel_LOAD=1, PORTSIZE_sel_LOAD=2, BITSIZE_sel_STORE=1, PORTSIZE_sel_STORE=2, BITSIZE_S_oe_ram=1, PORTSIZE_S_oe_ram=2, BITSIZE_S_we_ram=1, PORTSIZE_S_we_ram=2, BITSIZE_out1=1, PORTSIZE_out1=2, BITSIZE_S_addr_ram=1, PORTSIZE_S_addr_ram=2, BITSIZE_S_Wdata_ram=8, PORTSIZE_S_Wdata_ram=2, BITSIZE_Sin_Rdata_ram=8, PORTSIZE_Sin_Rdata_ram=2, BITSIZE_Sout_Rdata_ram=8, PORTSIZE_Sout_Rdata_ram=2, BITSIZE_S_data_ram_size=1, PORTSIZE_S_data_ram_size=2, BITSIZE_Sin_DataRdy=1, PORTSIZE_Sin_DataRdy=2, BITSIZE_Sout_DataRdy=1, PORTSIZE_Sout_DataRdy=2, MEMORY_INIT_file="array.mem", n_elements=1, data_size=32, address_space_begin=0, address_space_rangesize=4, BUS_PIPELINED=1, BRAM_BITSIZE=32, PRIVATE_MEMORY=0, USE_SPARSE_MEMORY=1, BITSIZE_proxy_in1=1, PORTSIZE_proxy_in1=2, BITSIZE_proxy_in2=1, PORTSIZE_proxy_in2=2, BITSIZE_proxy_in3=1, PORTSIZE_proxy_in3=2, BITSIZE_proxy_sel_LOAD=1, PORTSIZE_proxy_sel_LOAD=2, BITSIZE_proxy_sel_STORE=1, PORTSIZE_proxy_sel_STORE=2, BITSIZE_proxy_out1=1, PORTSIZE_proxy_out1=2;
  // IN
  input clock;
  input reset;
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  input [(PORTSIZE_in2*BITSIZE_in2)+(-1):0] in2;
  input [(PORTSIZE_in3*BITSIZE_in3)+(-1):0] in3;
  input [PORTSIZE_in4-1:0] in4;
  input [PORTSIZE_sel_LOAD-1:0] sel_LOAD;
  input [PORTSIZE_sel_STORE-1:0] sel_STORE;
  input [PORTSIZE_S_oe_ram-1:0] S_oe_ram;
  input [PORTSIZE_S_we_ram-1:0] S_we_ram;
  input [(PORTSIZE_S_addr_ram*BITSIZE_S_addr_ram)+(-1):0] S_addr_ram;
  input [(PORTSIZE_S_Wdata_ram*BITSIZE_S_Wdata_ram)+(-1):0] S_Wdata_ram;
  input [(PORTSIZE_Sin_Rdata_ram*BITSIZE_Sin_Rdata_ram)+(-1):0] Sin_Rdata_ram;
  input [(PORTSIZE_S_data_ram_size*BITSIZE_S_data_ram_size)+(-1):0] S_data_ram_size;
  input [PORTSIZE_Sin_DataRdy-1:0] Sin_DataRdy;
  input [(PORTSIZE_proxy_in1*BITSIZE_proxy_in1)+(-1):0] proxy_in1;
  input [(PORTSIZE_proxy_in2*BITSIZE_proxy_in2)+(-1):0] proxy_in2;
  input [(PORTSIZE_proxy_in3*BITSIZE_proxy_in3)+(-1):0] proxy_in3;
  input [PORTSIZE_proxy_sel_LOAD-1:0] proxy_sel_LOAD;
  input [PORTSIZE_proxy_sel_STORE-1:0] proxy_sel_STORE;
  // OUT
  output [(PORTSIZE_out1*BITSIZE_out1)+(-1):0] out1;
  output [(PORTSIZE_Sout_Rdata_ram*BITSIZE_Sout_Rdata_ram)+(-1):0] Sout_Rdata_ram;
  output [PORTSIZE_Sout_DataRdy-1:0] Sout_DataRdy;
  output [(PORTSIZE_proxy_out1*BITSIZE_proxy_out1)+(-1):0] proxy_out1;
  ARRAY_1D_STD_BRAM_NN_SDS_BUS_BASE #(.BITSIZE_in1(BITSIZE_in1), .PORTSIZE_in1(PORTSIZE_in1), .BITSIZE_in2(BITSIZE_in2), .PORTSIZE_in2(PORTSIZE_in2), .BITSIZE_in3(BITSIZE_in3), .PORTSIZE_in3(PORTSIZE_in3), .BITSIZE_sel_LOAD(BITSIZE_sel_LOAD), .PORTSIZE_sel_LOAD(PORTSIZE_sel_LOAD), .BITSIZE_sel_STORE(BITSIZE_sel_STORE), .PORTSIZE_sel_STORE(PORTSIZE_sel_STORE), .BITSIZE_S_oe_ram(BITSIZE_S_oe_ram), .PORTSIZE_S_oe_ram(PORTSIZE_S_oe_ram), .BITSIZE_S_we_ram(BITSIZE_S_we_ram), .PORTSIZE_S_we_ram(PORTSIZE_S_we_ram), .BITSIZE_out1(BITSIZE_out1), .PORTSIZE_out1(PORTSIZE_out1), .BITSIZE_S_addr_ram(BITSIZE_S_addr_ram), .PORTSIZE_S_addr_ram(PORTSIZE_S_addr_ram), .BITSIZE_S_Wdata_ram(BITSIZE_S_Wdata_ram), .PORTSIZE_S_Wdata_ram(PORTSIZE_S_Wdata_ram), .BITSIZE_Sin_Rdata_ram(BITSIZE_Sin_Rdata_ram), .PORTSIZE_Sin_Rdata_ram(PORTSIZE_Sin_Rdata_ram), .BITSIZE_Sout_Rdata_ram(BITSIZE_Sout_Rdata_ram), .PORTSIZE_Sout_Rdata_ram(PORTSIZE_Sout_Rdata_ram), .BITSIZE_S_data_ram_size(BITSIZE_S_data_ram_size), .PORTSIZE_S_data_ram_size(PORTSIZE_S_data_ram_size), .BITSIZE_Sin_DataRdy(BITSIZE_Sin_DataRdy), .PORTSIZE_Sin_DataRdy(PORTSIZE_Sin_DataRdy), .BITSIZE_Sout_DataRdy(BITSIZE_Sout_DataRdy), .PORTSIZE_Sout_DataRdy(PORTSIZE_Sout_DataRdy), .MEMORY_INIT_file(MEMORY_INIT_file), .n_elements(n_elements), .data_size(data_size), .address_space_begin(address_space_begin), .address_space_rangesize(address_space_rangesize), .BUS_PIPELINED(BUS_PIPELINED), .BRAM_BITSIZE(BRAM_BITSIZE), .PRIVATE_MEMORY(PRIVATE_MEMORY), .USE_SPARSE_MEMORY(USE_SPARSE_MEMORY), .HIGH_LATENCY(0), .BITSIZE_proxy_in1(BITSIZE_proxy_in1), .PORTSIZE_proxy_in1(PORTSIZE_proxy_in1), .BITSIZE_proxy_in2(BITSIZE_proxy_in2), .PORTSIZE_proxy_in2(PORTSIZE_proxy_in2), .BITSIZE_proxy_in3(BITSIZE_proxy_in3), .PORTSIZE_proxy_in3(PORTSIZE_proxy_in3), .BITSIZE_proxy_sel_LOAD(BITSIZE_proxy_sel_LOAD), .PORTSIZE_proxy_sel_LOAD(PORTSIZE_proxy_sel_LOAD), .BITSIZE_proxy_sel_STORE(BITSIZE_proxy_sel_STORE), .PORTSIZE_proxy_sel_STORE(PORTSIZE_proxy_sel_STORE), .BITSIZE_proxy_out1(BITSIZE_proxy_out1), .PORTSIZE_proxy_out1(PORTSIZE_proxy_out1)) ARRAY_1D_STD_BRAM_NN_instance (.out1(out1), .Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .proxy_out1(proxy_out1), .clock(clock), .reset(reset), .in1(in1), .in2(in2), .in3(in3), .sel_LOAD(sel_LOAD & in4), .sel_STORE(sel_STORE & in4), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size ), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(proxy_in1), .proxy_in2(proxy_in2), .proxy_in3(proxy_in3), .proxy_sel_LOAD(proxy_sel_LOAD), .proxy_sel_STORE(proxy_sel_STORE));
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module addr_expr_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module UUdata_converter_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  generate
  if (BITSIZE_out1 <= BITSIZE_in1)
  begin
    assign out1 = in1[BITSIZE_out1-1:0];
  end
  else
  begin
    assign out1 = {{(BITSIZE_out1-BITSIZE_in1){1'b0}},in1};
  end
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module read_cond_FU(in1, out1);
  parameter BITSIZE_in1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output out1;
  assign out1 = in1 != {BITSIZE_in1{1'b0}};
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module IIdata_converter_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  generate
  if (BITSIZE_out1 <= BITSIZE_in1)
  begin
    assign out1 = in1[BITSIZE_out1-1:0];
  end
  else
  begin
    assign out1 = {{(BITSIZE_out1-BITSIZE_in1){in1[BITSIZE_in1-1]}},in1};
  end
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ne_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 != in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_ne_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 != in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_plus_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 + in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_pointer_plus_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1, LSB_PARAMETER=-1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  wire [BITSIZE_out1-1:0] in1_tmp;
  wire [BITSIZE_out1-1:0] in2_tmp;
  assign in1_tmp = in1;
  assign in2_tmp = in2;generate if (BITSIZE_out1 > LSB_PARAMETER) assign out1[BITSIZE_out1-1:LSB_PARAMETER] = (in1_tmp[BITSIZE_out1-1:LSB_PARAMETER] + in2_tmp[BITSIZE_out1-1:LSB_PARAMETER]); else assign out1 = 0; endgenerate
  generate if (LSB_PARAMETER != 0 && BITSIZE_out1 > LSB_PARAMETER) assign out1[LSB_PARAMETER-1:0] = 0; endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module register_STD(clock, reset, in1, wenable, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input clock;
  input reset;
  input [BITSIZE_in1-1:0] in1;
  input wenable;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  reg [BITSIZE_out1-1:0] reg_out1 =0;
  assign out1 = reg_out1;
  always @(posedge clock)
    reg_out1 <= in1;

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2013-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module PROXY_CTRLN(in1, in2, in3, in4, sel_LOAD, sel_STORE, out1, proxy_in1, proxy_in2, proxy_in3, proxy_sel_LOAD, proxy_sel_STORE, proxy_out1);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2, BITSIZE_in2=1, PORTSIZE_in2=2, BITSIZE_in3=1, PORTSIZE_in3=2, BITSIZE_in4=1, PORTSIZE_in4=2, BITSIZE_sel_LOAD=1, PORTSIZE_sel_LOAD=2, BITSIZE_sel_STORE=1, PORTSIZE_sel_STORE=2, BITSIZE_out1=1, PORTSIZE_out1=2, BITSIZE_proxy_in1=1, PORTSIZE_proxy_in1=2, BITSIZE_proxy_in2=1, PORTSIZE_proxy_in2=2, BITSIZE_proxy_in3=1, PORTSIZE_proxy_in3=2, BITSIZE_proxy_sel_LOAD=1, PORTSIZE_proxy_sel_LOAD=2, BITSIZE_proxy_sel_STORE=1, PORTSIZE_proxy_sel_STORE=2, BITSIZE_proxy_out1=1, PORTSIZE_proxy_out1=2;
  // IN
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  input [(PORTSIZE_in2*BITSIZE_in2)+(-1):0] in2;
  input [(PORTSIZE_in3*BITSIZE_in3)+(-1):0] in3;
  input [PORTSIZE_in4-1:0] in4;
  input [PORTSIZE_sel_LOAD-1:0] sel_LOAD;
  input [PORTSIZE_sel_STORE-1:0] sel_STORE;
  input [(PORTSIZE_proxy_out1*BITSIZE_proxy_out1)+(-1):0] proxy_out1;
  // OUT
  output [(PORTSIZE_out1*BITSIZE_out1)+(-1):0] out1;
  output [(PORTSIZE_proxy_in1*BITSIZE_proxy_in1)+(-1):0] proxy_in1;
  output [(PORTSIZE_proxy_in2*BITSIZE_proxy_in2)+(-1):0] proxy_in2;
  output [(PORTSIZE_proxy_in3*BITSIZE_proxy_in3)+(-1):0] proxy_in3;
  output [PORTSIZE_proxy_sel_LOAD-1:0] proxy_sel_LOAD;
  output [PORTSIZE_proxy_sel_STORE-1:0] proxy_sel_STORE;
  
  wire [PORTSIZE_sel_STORE-1:0] int_sel_STORE;
  wire [PORTSIZE_sel_LOAD-1:0] int_sel_LOAD;
  assign int_sel_STORE = sel_STORE & in4;
  assign int_sel_LOAD = sel_LOAD & in4;
  generate
  genvar i0;
  for (i0=0; i0<PORTSIZE_out1; i0=i0+1)
    begin : L0
      assign out1[(i0+1)*BITSIZE_out1-1:i0*BITSIZE_out1] = proxy_out1[(i0+1)*BITSIZE_proxy_out1-1:i0*BITSIZE_proxy_out1];
    end
  endgenerate
  generate
  genvar i1;
  for (i1=0; i1<PORTSIZE_in1; i1=i1+1)
    begin : L1
      assign proxy_in1[(i1+1)*BITSIZE_proxy_in1-1:i1*BITSIZE_proxy_in1] = int_sel_STORE[i1] ? in1[(i1+1)*BITSIZE_in1-1:i1*BITSIZE_in1] : 0;
    end
  endgenerate
  generate
  genvar i2;
  for (i2=0; i2<PORTSIZE_in2; i2=i2+1)
    begin : L2
      assign proxy_in2[(i2+1)*BITSIZE_proxy_in2-1:i2*BITSIZE_proxy_in2] = int_sel_LOAD[i2]|int_sel_STORE[i2] ? in2[(i2+1)*BITSIZE_in2-1:i2*BITSIZE_in2] : 0;
    end
  endgenerate
  generate
  genvar i3;
  for (i3=0; i3<PORTSIZE_in3; i3=i3+1)
    begin : L3
      assign proxy_in3[(i3+1)*BITSIZE_proxy_in3-1:i3*BITSIZE_proxy_in3] = int_sel_LOAD[i3]|int_sel_STORE[i3] ? in3[(i3+1)*BITSIZE_in3-1:i3*BITSIZE_in3] : 0;
    end
  endgenerate
  assign proxy_sel_LOAD = int_sel_LOAD;
  assign proxy_sel_STORE = int_sel_STORE;

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module multi_read_cond_FU(in1, out1);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2, BITSIZE_out1=1;
  // IN
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module truth_and_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 && in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module truth_not_expr_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = !in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2013-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module bus_merger(in1, out1);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2, BITSIZE_out1=1;
  // IN
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  
  function [BITSIZE_out1-1:0] merge;
    input [BITSIZE_in1*PORTSIZE_in1-1:0] m;
    reg [BITSIZE_out1-1:0] res;
    integer i1;
  begin
    res={BITSIZE_in1{1'b0}};
    for(i1 = 0; i1 < PORTSIZE_in1; i1 = i1 + 1)
    begin
      res = res | m[i1*BITSIZE_in1 +:BITSIZE_in1];
    end
    merge = res;
  end
  endfunction
  
  assign out1 = merge(in1);
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module join_signal(in1, out1);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2, BITSIZE_out1=1;
  // IN
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  
  generate
  genvar i1;
  for (i1=0; i1<PORTSIZE_in1; i1=i1+1)
    begin : L1
      assign out1[(i1+1)*(BITSIZE_out1/PORTSIZE_in1)-1:i1*(BITSIZE_out1/PORTSIZE_in1)] = in1[(i1+1)*BITSIZE_in1-1:i1*BITSIZE_in1];
    end
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module split_signal(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1, PORTSIZE_out1=2;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [(PORTSIZE_out1*BITSIZE_out1)+(-1):0] out1;
  assign out1 = in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ASSIGN_UNSIGNED_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ASSIGN_VECTOR_BOOL_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>, Christian Pilato <christian.pilato@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module MUX_GATE(sel, in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input sel;
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = sel ? in1 : in2;
endmodule

// Datapath RTL description for is_connected
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_is_connected(clock, reset, return_port, proxy_out1_28867, proxy_in1_28867, proxy_in2_28867, proxy_in3_28867, proxy_sel_LOAD_28867, proxy_sel_STORE_28867, proxy_out1_28868, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, proxy_out1_28870, proxy_in1_28870, proxy_in2_28870, proxy_in3_28870, proxy_sel_LOAD_28870, proxy_sel_STORE_28870, selector_MUX_18_gimple_return_FU_17_i0_0_0_0, selector_MUX_29_reg_11_0_0_0, selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0, selector_MUX_31_reg_3_0_0_0, selector_MUX_32_reg_4_0_0_0, selector_MUX_32_reg_4_0_0_1, selector_MUX_36_reg_8_0_0_0, selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0, selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1, selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0, fuselector_PROXY_CTRLN_0_i0_LOAD, fuselector_PROXY_CTRLN_0_i0_STORE, fuselector_PROXY_CTRLN_1_i0_LOAD, fuselector_PROXY_CTRLN_1_i0_STORE, fuselector_PROXY_CTRLN_2_i0_LOAD, fuselector_PROXY_CTRLN_2_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_MULTIIF_is_connected_28872_30956, OUT_MULTIIF_is_connected_28872_30970);
  parameter MEM_var_28867_28882=1024, MEM_var_28868_28882=2048, MEM_var_28870_28882=4096;
  // IN
  input clock;
  input reset;
  input [15:0] proxy_out1_28867;
  input [15:0] proxy_out1_28868;
  input [15:0] proxy_out1_28870;
  input selector_MUX_18_gimple_return_FU_17_i0_0_0_0;
  input selector_MUX_29_reg_11_0_0_0;
  input selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0;
  input selector_MUX_31_reg_3_0_0_0;
  input selector_MUX_32_reg_4_0_0_0;
  input selector_MUX_32_reg_4_0_0_1;
  input selector_MUX_36_reg_8_0_0_0;
  input selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0;
  input selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1;
  input selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0;
  input fuselector_PROXY_CTRLN_0_i0_LOAD;
  input fuselector_PROXY_CTRLN_0_i0_STORE;
  input fuselector_PROXY_CTRLN_1_i0_LOAD;
  input fuselector_PROXY_CTRLN_1_i0_STORE;
  input fuselector_PROXY_CTRLN_2_i0_LOAD;
  input fuselector_PROXY_CTRLN_2_i0_STORE;
  input wrenable_reg_0;
  input wrenable_reg_1;
  input wrenable_reg_10;
  input wrenable_reg_11;
  input wrenable_reg_2;
  input wrenable_reg_3;
  input wrenable_reg_4;
  input wrenable_reg_5;
  input wrenable_reg_6;
  input wrenable_reg_7;
  input wrenable_reg_8;
  input wrenable_reg_9;
  // OUT
  output signed [7:0] return_port;
  output [15:0] proxy_in1_28867;
  output [27:0] proxy_in2_28867;
  output [7:0] proxy_in3_28867;
  output [1:0] proxy_sel_LOAD_28867;
  output [1:0] proxy_sel_STORE_28867;
  output [15:0] proxy_in1_28868;
  output [27:0] proxy_in2_28868;
  output [7:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output [15:0] proxy_in1_28870;
  output [27:0] proxy_in2_28870;
  output [7:0] proxy_in3_28870;
  output [1:0] proxy_sel_LOAD_28870;
  output [1:0] proxy_sel_STORE_28870;
  output [1:0] OUT_MULTIIF_is_connected_28872_30956;
  output [2:0] OUT_MULTIIF_is_connected_28872_30970;
  // Component and signal declarations
  wire [7:0] null_out_signal_PROXY_CTRLN_0_i0_out1_0;
  wire [7:0] null_out_signal_PROXY_CTRLN_0_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_1_i0_out1_0;
  wire [7:0] null_out_signal_PROXY_CTRLN_1_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_2_i0_out1_1;
  wire [7:0] out_MUX_18_gimple_return_FU_17_i0_0_0_0;
  wire [7:0] out_MUX_29_reg_11_0_0_0;
  wire [7:0] out_MUX_2_PROXY_CTRLN_0_i0_0_0_0;
  wire [31:0] out_MUX_31_reg_3_0_0_0;
  wire [7:0] out_MUX_32_reg_4_0_0_0;
  wire [7:0] out_MUX_32_reg_4_0_0_1;
  wire [31:0] out_MUX_36_reg_8_0_0_0;
  wire [7:0] out_MUX_6_PROXY_CTRLN_1_i0_0_0_0;
  wire [7:0] out_MUX_6_PROXY_CTRLN_1_i0_0_0_1;
  wire [13:0] out_MUX_7_PROXY_CTRLN_1_i0_1_0_0;
  wire [7:0] out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0;
  wire [12:0] out_UUdata_converter_FU_13_i0_fu_is_connected_28872_29259;
  wire [13:0] out_UUdata_converter_FU_7_i0_fu_is_connected_28872_29206;
  wire [11:0] out_addr_expr_FU_5_i0_fu_is_connected_28872_30194;
  wire [13:0] out_addr_expr_FU_6_i0_fu_is_connected_28872_30198;
  wire [10:0] out_addr_expr_FU_8_i0_fu_is_connected_28872_30217;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [13:0] out_const_10;
  wire [7:0] out_const_2;
  wire [1:0] out_const_3;
  wire [4:0] out_const_4;
  wire out_const_5;
  wire [10:0] out_const_6;
  wire [1:0] out_const_7;
  wire [4:0] out_const_8;
  wire [11:0] out_const_9;
  wire [13:0] out_conv_out_addr_expr_FU_5_i0_fu_is_connected_28872_30194_12_14;
  wire signed [7:0] out_conv_out_const_0_I_1_I_8;
  wire [31:0] out_conv_out_const_10_14_32;
  wire signed [7:0] out_conv_out_const_3_I_2_I_8;
  wire [3:0] out_conv_out_const_4_5_4;
  wire [31:0] out_conv_out_const_6_11_32;
  wire [31:0] out_conv_out_const_9_12_32;
  wire [13:0] out_conv_out_reg_0_reg_0_12_14;
  wire [13:0] out_conv_out_reg_1_reg_1_11_14;
  wire [13:0] out_conv_out_reg_9_reg_9_13_14;
  wire [7:0] out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_0_1_8;
  wire [31:0] out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_1_14_32;
  wire [7:0] out_conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_2_1_8;
  wire [1:0] out_multi_read_cond_FU_14_i0_fu_is_connected_28872_30956;
  wire [2:0] out_multi_read_cond_FU_16_i0_fu_is_connected_28872_30970;
  wire out_ne_expr_FU_8_0_8_18_i0_fu_is_connected_28872_30709;
  wire [11:0] out_reg_0_reg_0;
  wire out_reg_10_reg_10;
  wire [7:0] out_reg_11_reg_11;
  wire [10:0] out_reg_1_reg_1;
  wire [7:0] out_reg_2_reg_2;
  wire [31:0] out_reg_3_reg_3;
  wire [7:0] out_reg_4_reg_4;
  wire out_reg_5_reg_5;
  wire out_reg_6_reg_6;
  wire [7:0] out_reg_7_reg_7;
  wire [31:0] out_reg_8_reg_8;
  wire [12:0] out_reg_9_reg_9;
  wire out_truth_and_expr_FU_1_1_1_19_i0_fu_is_connected_28872_30962;
  wire out_truth_and_expr_FU_1_1_1_19_i1_fu_is_connected_28872_30969;
  wire out_truth_and_expr_FU_1_1_1_19_i2_fu_is_connected_28872_30973;
  wire out_truth_and_expr_FU_1_1_1_19_i3_fu_is_connected_28872_30979;
  wire out_truth_not_expr_FU_1_1_20_i0_fu_is_connected_28872_30959;
  wire out_truth_not_expr_FU_1_1_20_i1_fu_is_connected_28872_30966;
  wire out_truth_not_expr_FU_1_1_20_i2_fu_is_connected_28872_30976;
  wire [0:0] out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_0;
  wire [13:0] out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_1;
  wire [0:0] out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_2;
  wire out_ui_ne_expr_FU_8_0_8_21_i0_fu_is_connected_28872_30711;
  wire out_ui_ne_expr_FU_8_0_8_21_i1_fu_is_connected_28872_30715;
  wire out_ui_ne_expr_FU_8_8_8_22_i0_fu_is_connected_28872_30707;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_23_i0_fu_is_connected_28872_29230;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_24_i0_fu_is_connected_28872_29254;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_25_i0_fu_is_connected_28872_29225;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_25_i1_fu_is_connected_28872_29242;
  wire [7:0] out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_3;
  wire [7:0] out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_4;
  wire [7:0] out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_5;
  wire [7:0] out_vb_assign_conn_obj_6_ASSIGN_VECTOR_BOOL_FU_vb_assign_6;
  wire [15:0] sig_in_bus_mergerproxy_in1_288670_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288681_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288702_0;
  wire [27:0] sig_in_bus_mergerproxy_in2_288673_0;
  wire [27:0] sig_in_bus_mergerproxy_in2_288684_0;
  wire [27:0] sig_in_bus_mergerproxy_in2_288705_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_288676_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_288687_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_288708_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_288679_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886810_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2887011_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886712_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886813_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2887014_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288670_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288681_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288702_0;
  wire [27:0] sig_in_vector_bus_mergerproxy_in2_288673_0;
  wire [27:0] sig_in_vector_bus_mergerproxy_in2_288684_0;
  wire [27:0] sig_in_vector_bus_mergerproxy_in2_288705_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_288676_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_288687_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_288708_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_288679_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886810_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2887011_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886712_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886813_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2887014_0;
  wire [15:0] sig_out_bus_mergerproxy_in1_288670_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288681_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288702_;
  wire [27:0] sig_out_bus_mergerproxy_in2_288673_;
  wire [27:0] sig_out_bus_mergerproxy_in2_288684_;
  wire [27:0] sig_out_bus_mergerproxy_in2_288705_;
  wire [7:0] sig_out_bus_mergerproxy_in3_288676_;
  wire [7:0] sig_out_bus_mergerproxy_in3_288687_;
  wire [7:0] sig_out_bus_mergerproxy_in3_288708_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_288679_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886810_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2887011_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886712_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886813_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2887014_;
  
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_0 (.out1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_0), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(14), .BITSIZE_out1(14)) ASSIGN_UNSIGNED_FU_u_assign_1 (.out1(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_1), .in1(out_UUdata_converter_FU_7_i0_fu_is_connected_28872_29206));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_2 (.out1(out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_2), .in1(out_const_0));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_3 (.out1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_3), .in1(out_const_1));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_4 (.out1(out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_4), .in1(out_reg_4_reg_4));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_5 (.out1(out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_5), .in1(out_const_2));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_6 (.out1(out_vb_assign_conn_obj_6_ASSIGN_VECTOR_BOOL_FU_vb_assign_6), .in1(out_reg_11_reg_11));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_18_gimple_return_FU_17_i0_0_0_0 (.out1(out_MUX_18_gimple_return_FU_17_i0_0_0_0), .sel(selector_MUX_18_gimple_return_FU_17_i0_0_0_0), .in1(out_conv_out_const_0_I_1_I_8), .in2(out_conv_out_const_3_I_2_I_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_29_reg_11_0_0_0 (.out1(out_MUX_29_reg_11_0_0_0), .sel(selector_MUX_29_reg_11_0_0_0), .in1(out_reg_2_reg_2), .in2(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_0_1_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_2_PROXY_CTRLN_0_i0_0_0_0 (.out1(out_MUX_2_PROXY_CTRLN_0_i0_0_0_0), .sel(selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0), .in1(out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_4), .in2(out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_5));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_31_reg_3_0_0_0 (.out1(out_MUX_31_reg_3_0_0_0), .sel(selector_MUX_31_reg_3_0_0_0), .in1(out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_1_14_32), .in2(out_ui_plus_expr_FU_32_0_32_23_i0_fu_is_connected_28872_29230));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_32_reg_4_0_0_0 (.out1(out_MUX_32_reg_4_0_0_0), .sel(selector_MUX_32_reg_4_0_0_0), .in1(out_reg_7_reg_7), .in2(out_conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_2_1_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_32_reg_4_0_0_1 (.out1(out_MUX_32_reg_4_0_0_1), .sel(selector_MUX_32_reg_4_0_0_1), .in1(out_ui_plus_expr_FU_8_0_8_25_i1_fu_is_connected_28872_29242), .in2(out_MUX_32_reg_4_0_0_0));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_36_reg_8_0_0_0 (.out1(out_MUX_36_reg_8_0_0_0), .sel(selector_MUX_36_reg_8_0_0_0), .in1(out_reg_3_reg_3), .in2(out_ui_plus_expr_FU_32_0_32_24_i0_fu_is_connected_28872_29254));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_6_PROXY_CTRLN_1_i0_0_0_0 (.out1(out_MUX_6_PROXY_CTRLN_1_i0_0_0_0), .sel(selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0), .in1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_3), .in2(out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_5));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_6_PROXY_CTRLN_1_i0_0_0_1 (.out1(out_MUX_6_PROXY_CTRLN_1_i0_0_0_1), .sel(selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1), .in1(out_vb_assign_conn_obj_6_ASSIGN_VECTOR_BOOL_FU_vb_assign_6), .in2(out_MUX_6_PROXY_CTRLN_1_i0_0_0_0));
  MUX_GATE #(.BITSIZE_in1(14), .BITSIZE_in2(14), .BITSIZE_out1(14)) MUX_7_PROXY_CTRLN_1_i0_1_0_0 (.out1(out_MUX_7_PROXY_CTRLN_1_i0_1_0_0), .sel(selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0), .in1(out_conv_out_reg_0_reg_0_12_14), .in2(out_conv_out_addr_expr_FU_5_i0_fu_is_connected_28872_30194_12_14));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(14), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(14), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_0_i0 (.out1({null_out_signal_PROXY_CTRLN_0_i0_out1_1, null_out_signal_PROXY_CTRLN_0_i0_out1_0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288670_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288673_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288676_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_288679_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886712_0), .in1({8'b00000000, out_MUX_2_PROXY_CTRLN_0_i0_0_0_0}), .in2({14'b00000000000000, out_conv_out_reg_1_reg_1_11_14}), .in3({4'b0000, out_conv_out_const_4_5_4}), .in4({1'b0, out_const_5}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_0_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_0_i0_STORE}), .proxy_out1(proxy_out1_28867));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(14), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(14), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_1_i0 (.out1({null_out_signal_PROXY_CTRLN_1_i0_out1_1, null_out_signal_PROXY_CTRLN_1_i0_out1_0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288681_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288684_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288687_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886810_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886813_0), .in1({8'b00000000, out_MUX_6_PROXY_CTRLN_1_i0_0_0_1}), .in2({14'b00000000000000, out_MUX_7_PROXY_CTRLN_1_i0_1_0_0}), .in3({4'b0000, out_conv_out_const_4_5_4}), .in4({1'b0, out_const_5}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_1_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_1_i0_STORE}), .proxy_out1(proxy_out1_28868));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(14), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(14), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_2_i0 (.out1({null_out_signal_PROXY_CTRLN_2_i0_out1_1, out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288702_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288705_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288708_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2887011_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2887014_0), .in1({8'b00000000, 8'b00000000}), .in2({14'b00000000000000, out_conv_out_reg_9_reg_9_13_14}), .in3({4'b0000, out_conv_out_const_4_5_4}), .in4({1'b0, out_const_5}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_2_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_2_i0_STORE}), .proxy_out1(proxy_out1_28870));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288670_ (.out1(sig_out_bus_mergerproxy_in1_288670_), .in1({sig_in_bus_mergerproxy_in1_288670_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288681_ (.out1(sig_out_bus_mergerproxy_in1_288681_), .in1({sig_in_bus_mergerproxy_in1_288681_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288702_ (.out1(sig_out_bus_mergerproxy_in1_288702_), .in1({sig_in_bus_mergerproxy_in1_288702_0}));
  bus_merger #(.BITSIZE_in1(28), .PORTSIZE_in1(1), .BITSIZE_out1(28)) bus_mergerproxy_in2_288673_ (.out1(sig_out_bus_mergerproxy_in2_288673_), .in1({sig_in_bus_mergerproxy_in2_288673_0}));
  bus_merger #(.BITSIZE_in1(28), .PORTSIZE_in1(1), .BITSIZE_out1(28)) bus_mergerproxy_in2_288684_ (.out1(sig_out_bus_mergerproxy_in2_288684_), .in1({sig_in_bus_mergerproxy_in2_288684_0}));
  bus_merger #(.BITSIZE_in1(28), .PORTSIZE_in1(1), .BITSIZE_out1(28)) bus_mergerproxy_in2_288705_ (.out1(sig_out_bus_mergerproxy_in2_288705_), .in1({sig_in_bus_mergerproxy_in2_288705_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_288676_ (.out1(sig_out_bus_mergerproxy_in3_288676_), .in1({sig_in_bus_mergerproxy_in3_288676_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_288687_ (.out1(sig_out_bus_mergerproxy_in3_288687_), .in1({sig_in_bus_mergerproxy_in3_288687_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_288708_ (.out1(sig_out_bus_mergerproxy_in3_288708_), .in1({sig_in_bus_mergerproxy_in3_288708_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_288679_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288679_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288679_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2886810_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886810_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886810_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2887011_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2887011_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2887011_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886712_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886712_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886712_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886813_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886813_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886813_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2887014_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2887014_), .in1({sig_in_bus_mergerproxy_sel_STORE_2887014_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000000)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(14), .value(MEM_var_28870_28882)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(8), .value(8'b00011001)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(2), .value(2'b01)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(11), .value(MEM_var_28867_28882)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(5), .value(5'b11001)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(12), .value(MEM_var_28868_28882)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(14)) conv_out_addr_expr_FU_5_i0_fu_is_connected_28872_30194_12_14 (.out1(out_conv_out_addr_expr_FU_5_i0_fu_is_connected_28872_30194_12_14), .in1(out_addr_expr_FU_5_i0_fu_is_connected_28872_30194));
  IIdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_const_0_I_1_I_8 (.out1(out_conv_out_const_0_I_1_I_8), .in1(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(14), .BITSIZE_out1(32)) conv_out_const_10_14_32 (.out1(out_conv_out_const_10_14_32), .in1(out_const_10));
  IIdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(8)) conv_out_const_3_I_2_I_8 (.out1(out_conv_out_const_3_I_2_I_8), .in1(out_const_3));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_4_5_4 (.out1(out_conv_out_const_4_5_4), .in1(out_const_4));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(32)) conv_out_const_6_11_32 (.out1(out_conv_out_const_6_11_32), .in1(out_const_6));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(32)) conv_out_const_9_12_32 (.out1(out_conv_out_const_9_12_32), .in1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(14)) conv_out_reg_0_reg_0_12_14 (.out1(out_conv_out_reg_0_reg_0_12_14), .in1(out_reg_0_reg_0));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(14)) conv_out_reg_1_reg_1_11_14 (.out1(out_conv_out_reg_1_reg_1_11_14), .in1(out_reg_1_reg_1));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(14)) conv_out_reg_9_reg_9_13_14 (.out1(out_conv_out_reg_9_reg_9_13_14), .in1(out_reg_9_reg_9));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_0_1_8 (.out1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_0_1_8), .in1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_0));
  UUdata_converter_FU #(.BITSIZE_in1(14), .BITSIZE_out1(32)) conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_1_14_32 (.out1(out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_1_14_32), .in1(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_1));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_2_1_8 (.out1(out_conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_2_1_8), .in1(out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_2));
  UUdata_converter_FU #(.BITSIZE_in1(14), .BITSIZE_out1(14)) fu_is_connected_28872_29206 (.out1(out_UUdata_converter_FU_7_i0_fu_is_connected_28872_29206), .in1(out_addr_expr_FU_6_i0_fu_is_connected_28872_30198));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_is_connected_28872_29225 (.out1(out_ui_plus_expr_FU_8_0_8_25_i0_fu_is_connected_28872_29225), .in1(out_reg_11_reg_11), .in2(out_const_5));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(5), .BITSIZE_out1(32)) fu_is_connected_28872_29230 (.out1(out_ui_plus_expr_FU_32_0_32_23_i0_fu_is_connected_28872_29230), .in1(out_reg_3_reg_3), .in2(out_const_8));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_is_connected_28872_29242 (.out1(out_ui_plus_expr_FU_8_0_8_25_i1_fu_is_connected_28872_29242), .in1(out_reg_4_reg_4), .in2(out_const_5));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(32)) fu_is_connected_28872_29254 (.out1(out_ui_plus_expr_FU_32_0_32_24_i0_fu_is_connected_28872_29254), .in1(out_reg_8_reg_8), .in2(out_const_5));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) fu_is_connected_28872_29259 (.out1(out_UUdata_converter_FU_13_i0_fu_is_connected_28872_29259), .in1(out_reg_8_reg_8));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(12)) fu_is_connected_28872_30194 (.out1(out_addr_expr_FU_5_i0_fu_is_connected_28872_30194), .in1(out_conv_out_const_9_12_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(14)) fu_is_connected_28872_30198 (.out1(out_addr_expr_FU_6_i0_fu_is_connected_28872_30198), .in1(out_conv_out_const_10_14_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(11)) fu_is_connected_28872_30217 (.out1(out_addr_expr_FU_8_i0_fu_is_connected_28872_30217), .in1(out_conv_out_const_6_11_32));
  ui_ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_is_connected_28872_30707 (.out1(out_ui_ne_expr_FU_8_8_8_22_i0_fu_is_connected_28872_30707), .in1(out_reg_11_reg_11), .in2(out_reg_4_reg_4));
  ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_is_connected_28872_30709 (.out1(out_ne_expr_FU_8_0_8_18_i0_fu_is_connected_28872_30709), .in1(out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0), .in2(out_const_7));
  ui_ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(5), .BITSIZE_out1(1)) fu_is_connected_28872_30711 (.out1(out_ui_ne_expr_FU_8_0_8_21_i0_fu_is_connected_28872_30711), .in1(out_ui_plus_expr_FU_8_0_8_25_i0_fu_is_connected_28872_29225), .in2(out_const_8));
  ui_ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(5), .BITSIZE_out1(1)) fu_is_connected_28872_30715 (.out1(out_ui_ne_expr_FU_8_0_8_21_i1_fu_is_connected_28872_30715), .in1(out_ui_plus_expr_FU_8_0_8_25_i1_fu_is_connected_28872_29242), .in2(out_const_8));
  multi_read_cond_FU #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) fu_is_connected_28872_30956 (.out1(out_multi_read_cond_FU_14_i0_fu_is_connected_28872_30956), .in1({out_truth_and_expr_FU_1_1_1_19_i0_fu_is_connected_28872_30962, out_ui_ne_expr_FU_8_8_8_22_i0_fu_is_connected_28872_30707}));
  truth_not_expr_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_is_connected_28872_30959 (.out1(out_truth_not_expr_FU_1_1_20_i0_fu_is_connected_28872_30959), .in1(out_ui_ne_expr_FU_8_8_8_22_i0_fu_is_connected_28872_30707));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_is_connected_28872_30962 (.out1(out_truth_and_expr_FU_1_1_1_19_i0_fu_is_connected_28872_30962), .in1(out_ui_ne_expr_FU_8_0_8_21_i1_fu_is_connected_28872_30715), .in2(out_truth_not_expr_FU_1_1_20_i0_fu_is_connected_28872_30959));
  truth_not_expr_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_is_connected_28872_30966 (.out1(out_truth_not_expr_FU_1_1_20_i1_fu_is_connected_28872_30966), .in1(out_ne_expr_FU_8_0_8_18_i0_fu_is_connected_28872_30709));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_is_connected_28872_30969 (.out1(out_truth_and_expr_FU_1_1_1_19_i1_fu_is_connected_28872_30969), .in1(out_reg_10_reg_10), .in2(out_truth_not_expr_FU_1_1_20_i1_fu_is_connected_28872_30966));
  multi_read_cond_FU #(.BITSIZE_in1(1), .PORTSIZE_in1(3), .BITSIZE_out1(3)) fu_is_connected_28872_30970 (.out1(out_multi_read_cond_FU_16_i0_fu_is_connected_28872_30970), .in1({out_truth_and_expr_FU_1_1_1_19_i1_fu_is_connected_28872_30969, out_truth_and_expr_FU_1_1_1_19_i3_fu_is_connected_28872_30979, out_truth_and_expr_FU_1_1_1_19_i2_fu_is_connected_28872_30973}));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_is_connected_28872_30973 (.out1(out_truth_and_expr_FU_1_1_1_19_i2_fu_is_connected_28872_30973), .in1(out_ne_expr_FU_8_0_8_18_i0_fu_is_connected_28872_30709), .in2(out_reg_5_reg_5));
  truth_not_expr_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_is_connected_28872_30976 (.out1(out_truth_not_expr_FU_1_1_20_i2_fu_is_connected_28872_30976), .in1(out_ui_ne_expr_FU_8_0_8_21_i0_fu_is_connected_28872_30711));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_is_connected_28872_30979 (.out1(out_truth_and_expr_FU_1_1_1_19_i3_fu_is_connected_28872_30979), .in1(out_ne_expr_FU_8_0_8_18_i0_fu_is_connected_28872_30709), .in2(out_reg_6_reg_6));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288670_0 (.out1(sig_in_bus_mergerproxy_in1_288670_0), .in1(sig_in_vector_bus_mergerproxy_in1_288670_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288681_0 (.out1(sig_in_bus_mergerproxy_in1_288681_0), .in1(sig_in_vector_bus_mergerproxy_in1_288681_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288702_0 (.out1(sig_in_bus_mergerproxy_in1_288702_0), .in1(sig_in_vector_bus_mergerproxy_in1_288702_0));
  join_signal #(.BITSIZE_in1(14), .PORTSIZE_in1(2), .BITSIZE_out1(28)) join_signalbus_mergerproxy_in2_288673_0 (.out1(sig_in_bus_mergerproxy_in2_288673_0), .in1(sig_in_vector_bus_mergerproxy_in2_288673_0));
  join_signal #(.BITSIZE_in1(14), .PORTSIZE_in1(2), .BITSIZE_out1(28)) join_signalbus_mergerproxy_in2_288684_0 (.out1(sig_in_bus_mergerproxy_in2_288684_0), .in1(sig_in_vector_bus_mergerproxy_in2_288684_0));
  join_signal #(.BITSIZE_in1(14), .PORTSIZE_in1(2), .BITSIZE_out1(28)) join_signalbus_mergerproxy_in2_288705_0 (.out1(sig_in_bus_mergerproxy_in2_288705_0), .in1(sig_in_vector_bus_mergerproxy_in2_288705_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_288676_0 (.out1(sig_in_bus_mergerproxy_in3_288676_0), .in1(sig_in_vector_bus_mergerproxy_in3_288676_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_288687_0 (.out1(sig_in_bus_mergerproxy_in3_288687_0), .in1(sig_in_vector_bus_mergerproxy_in3_288687_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_288708_0 (.out1(sig_in_bus_mergerproxy_in3_288708_0), .in1(sig_in_vector_bus_mergerproxy_in3_288708_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_288679_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_288679_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_288679_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886810_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886810_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886810_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2887011_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2887011_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2887011_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886712_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886712_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886712_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886813_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886813_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886813_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2887014_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2887014_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2887014_0));
  register_SE #(.BITSIZE_in1(12), .BITSIZE_out1(12)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_5_i0_fu_is_connected_28872_30194), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(11), .BITSIZE_out1(11)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_8_i0_fu_is_connected_28872_30217), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_21_i1_fu_is_connected_28872_30715), .wenable(wrenable_reg_10));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_MUX_29_reg_11_0_0_0), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_8_0_8_25_i0_fu_is_connected_28872_29225), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_MUX_31_reg_3_0_0_0), .wenable(wrenable_reg_3));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_MUX_32_reg_4_0_0_1), .wenable(wrenable_reg_4));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_21_i0_fu_is_connected_28872_30711), .wenable(wrenable_reg_5));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_truth_not_expr_FU_1_1_20_i2_fu_is_connected_28872_30976), .wenable(wrenable_reg_6));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_8_0_8_25_i1_fu_is_connected_28872_29242), .wenable(wrenable_reg_7));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_MUX_36_reg_8_0_0_0), .wenable(wrenable_reg_8));
  register_STD #(.BITSIZE_in1(13), .BITSIZE_out1(13)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_13_i0_fu_is_connected_28872_29259), .wenable(wrenable_reg_9));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288670_ (.out1(proxy_in1_28867), .in1(sig_out_bus_mergerproxy_in1_288670_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288681_ (.out1(proxy_in1_28868), .in1(sig_out_bus_mergerproxy_in1_288681_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288702_ (.out1(proxy_in1_28870), .in1(sig_out_bus_mergerproxy_in1_288702_));
  split_signal #(.BITSIZE_in1(28), .BITSIZE_out1(14), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288673_ (.out1(proxy_in2_28867), .in1(sig_out_bus_mergerproxy_in2_288673_));
  split_signal #(.BITSIZE_in1(28), .BITSIZE_out1(14), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288684_ (.out1(proxy_in2_28868), .in1(sig_out_bus_mergerproxy_in2_288684_));
  split_signal #(.BITSIZE_in1(28), .BITSIZE_out1(14), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288705_ (.out1(proxy_in2_28870), .in1(sig_out_bus_mergerproxy_in2_288705_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_288676_ (.out1(proxy_in3_28867), .in1(sig_out_bus_mergerproxy_in3_288676_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_288687_ (.out1(proxy_in3_28868), .in1(sig_out_bus_mergerproxy_in3_288687_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_288708_ (.out1(proxy_in3_28870), .in1(sig_out_bus_mergerproxy_in3_288708_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_288679_ (.out1(proxy_sel_LOAD_28867), .in1(sig_out_bus_mergerproxy_sel_LOAD_288679_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886810_ (.out1(proxy_sel_LOAD_28868), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886810_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2887011_ (.out1(proxy_sel_LOAD_28870), .in1(sig_out_bus_mergerproxy_sel_LOAD_2887011_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886712_ (.out1(proxy_sel_STORE_28867), .in1(sig_out_bus_mergerproxy_sel_STORE_2886712_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886813_ (.out1(proxy_sel_STORE_28868), .in1(sig_out_bus_mergerproxy_sel_STORE_2886813_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2887014_ (.out1(proxy_sel_STORE_28870), .in1(sig_out_bus_mergerproxy_sel_STORE_2887014_));
  // io-signal post fix
  assign return_port = out_MUX_18_gimple_return_FU_17_i0_0_0_0;
  assign OUT_MULTIIF_is_connected_28872_30956 = out_multi_read_cond_FU_14_i0_fu_is_connected_28872_30956;
  assign OUT_MULTIIF_is_connected_28872_30970 = out_multi_read_cond_FU_16_i0_fu_is_connected_28872_30970;

endmodule

// FSM based controller description for is_connected
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_is_connected(done_port, selector_MUX_18_gimple_return_FU_17_i0_0_0_0, selector_MUX_29_reg_11_0_0_0, selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0, selector_MUX_31_reg_3_0_0_0, selector_MUX_32_reg_4_0_0_0, selector_MUX_32_reg_4_0_0_1, selector_MUX_36_reg_8_0_0_0, selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0, selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1, selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0, fuselector_PROXY_CTRLN_0_i0_LOAD, fuselector_PROXY_CTRLN_0_i0_STORE, fuselector_PROXY_CTRLN_1_i0_LOAD, fuselector_PROXY_CTRLN_1_i0_STORE, fuselector_PROXY_CTRLN_2_i0_LOAD, fuselector_PROXY_CTRLN_2_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_MULTIIF_is_connected_28872_30956, OUT_MULTIIF_is_connected_28872_30970, clock, reset, start_port);
  // IN
  input [1:0] OUT_MULTIIF_is_connected_28872_30956;
  input [2:0] OUT_MULTIIF_is_connected_28872_30970;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output selector_MUX_18_gimple_return_FU_17_i0_0_0_0;
  output selector_MUX_29_reg_11_0_0_0;
  output selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0;
  output selector_MUX_31_reg_3_0_0_0;
  output selector_MUX_32_reg_4_0_0_0;
  output selector_MUX_32_reg_4_0_0_1;
  output selector_MUX_36_reg_8_0_0_0;
  output selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0;
  output selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1;
  output selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0;
  output fuselector_PROXY_CTRLN_0_i0_LOAD;
  output fuselector_PROXY_CTRLN_0_i0_STORE;
  output fuselector_PROXY_CTRLN_1_i0_LOAD;
  output fuselector_PROXY_CTRLN_1_i0_STORE;
  output fuselector_PROXY_CTRLN_2_i0_LOAD;
  output fuselector_PROXY_CTRLN_2_i0_STORE;
  output wrenable_reg_0;
  output wrenable_reg_1;
  output wrenable_reg_10;
  output wrenable_reg_11;
  output wrenable_reg_2;
  output wrenable_reg_3;
  output wrenable_reg_4;
  output wrenable_reg_5;
  output wrenable_reg_6;
  output wrenable_reg_7;
  output wrenable_reg_8;
  output wrenable_reg_9;
  parameter [2:0] S_0 = 3'd0,
    S_1 = 3'd1,
    S_2 = 3'd2,
    S_3 = 3'd3,
    S_4 = 3'd4,
    S_5 = 3'd5,
    S_6 = 3'd6;
  reg [2:0] _present_state, _next_state;
  reg done_port;
  reg selector_MUX_18_gimple_return_FU_17_i0_0_0_0;
  reg selector_MUX_29_reg_11_0_0_0;
  reg selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0;
  reg selector_MUX_31_reg_3_0_0_0;
  reg selector_MUX_32_reg_4_0_0_0;
  reg selector_MUX_32_reg_4_0_0_1;
  reg selector_MUX_36_reg_8_0_0_0;
  reg selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0;
  reg selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1;
  reg selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0;
  reg fuselector_PROXY_CTRLN_0_i0_LOAD;
  reg fuselector_PROXY_CTRLN_0_i0_STORE;
  reg fuselector_PROXY_CTRLN_1_i0_LOAD;
  reg fuselector_PROXY_CTRLN_1_i0_STORE;
  reg fuselector_PROXY_CTRLN_2_i0_LOAD;
  reg fuselector_PROXY_CTRLN_2_i0_STORE;
  reg wrenable_reg_0;
  reg wrenable_reg_1;
  reg wrenable_reg_10;
  reg wrenable_reg_11;
  reg wrenable_reg_2;
  reg wrenable_reg_3;
  reg wrenable_reg_4;
  reg wrenable_reg_5;
  reg wrenable_reg_6;
  reg wrenable_reg_7;
  reg wrenable_reg_8;
  reg wrenable_reg_9;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_0;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    selector_MUX_18_gimple_return_FU_17_i0_0_0_0 = 1'b0;
    selector_MUX_29_reg_11_0_0_0 = 1'b0;
    selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0 = 1'b0;
    selector_MUX_31_reg_3_0_0_0 = 1'b0;
    selector_MUX_32_reg_4_0_0_0 = 1'b0;
    selector_MUX_32_reg_4_0_0_1 = 1'b0;
    selector_MUX_36_reg_8_0_0_0 = 1'b0;
    selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0 = 1'b0;
    selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1 = 1'b0;
    selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0 = 1'b0;
    fuselector_PROXY_CTRLN_0_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_0_i0_STORE = 1'b0;
    fuselector_PROXY_CTRLN_1_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_1_i0_STORE = 1'b0;
    fuselector_PROXY_CTRLN_2_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_2_i0_STORE = 1'b0;
    wrenable_reg_0 = 1'b0;
    wrenable_reg_1 = 1'b0;
    wrenable_reg_10 = 1'b0;
    wrenable_reg_11 = 1'b0;
    wrenable_reg_2 = 1'b0;
    wrenable_reg_3 = 1'b0;
    wrenable_reg_4 = 1'b0;
    wrenable_reg_5 = 1'b0;
    wrenable_reg_6 = 1'b0;
    wrenable_reg_7 = 1'b0;
    wrenable_reg_8 = 1'b0;
    wrenable_reg_9 = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          selector_MUX_31_reg_3_0_0_0 = 1'b1;
          selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_1_i0_STORE = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_3 = 1'b1;
          _next_state = S_1;
        end
        else
        begin
          selector_MUX_18_gimple_return_FU_17_i0_0_0_0 = 1'bX;
          selector_MUX_29_reg_11_0_0_0 = 1'bX;
          selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0 = 1'bX;
          selector_MUX_31_reg_3_0_0_0 = 1'bX;
          selector_MUX_32_reg_4_0_0_0 = 1'bX;
          selector_MUX_32_reg_4_0_0_1 = 1'bX;
          selector_MUX_36_reg_8_0_0_0 = 1'bX;
          selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0 = 1'bX;
          selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1 = 1'bX;
          selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_10 = 1'bX;
          wrenable_reg_11 = 1'bX;
          wrenable_reg_2 = 1'bX;
          wrenable_reg_3 = 1'bX;
          wrenable_reg_4 = 1'bX;
          wrenable_reg_5 = 1'bX;
          wrenable_reg_6 = 1'bX;
          wrenable_reg_7 = 1'bX;
          wrenable_reg_8 = 1'bX;
          wrenable_reg_9 = 1'bX;
          _next_state = S_0;
        end
      S_1 :
        begin
          selector_MUX_36_reg_8_0_0_0 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_3 = 1'b1;
          wrenable_reg_4 = 1'b1;
          wrenable_reg_5 = 1'b1;
          wrenable_reg_6 = 1'b1;
          wrenable_reg_8 = 1'b1;
          _next_state = S_2;
        end
      S_2 :
        begin
          selector_MUX_32_reg_4_0_0_1 = 1'b1;
          wrenable_reg_10 = 1'b1;
          wrenable_reg_4 = 1'b1;
          wrenable_reg_7 = 1'b1;
          wrenable_reg_8 = 1'b1;
          wrenable_reg_9 = 1'b1;
          if (OUT_MULTIIF_is_connected_28872_30956[0] == 1'b1)
            begin
              _next_state = S_3;
              selector_MUX_32_reg_4_0_0_1 = 1'b0;
              wrenable_reg_4 = 1'b0;
            end
          else if (OUT_MULTIIF_is_connected_28872_30956[1] == 1'b1)
            begin
              _next_state = S_2;
              wrenable_reg_10 = 1'b0;
              wrenable_reg_7 = 1'b0;
              wrenable_reg_9 = 1'b0;
            end
          else
            begin
              _next_state = S_6;
              done_port = 1'b1;
              selector_MUX_32_reg_4_0_0_1 = 1'b0;
              wrenable_reg_10 = 1'b0;
              wrenable_reg_4 = 1'b0;
              wrenable_reg_7 = 1'b0;
              wrenable_reg_8 = 1'b0;
              wrenable_reg_9 = 1'b0;
            end
        end
      S_3 :
        begin
          fuselector_PROXY_CTRLN_2_i0_LOAD = 1'b1;
          _next_state = S_4;
        end
      S_4 :
        begin
          selector_MUX_29_reg_11_0_0_0 = 1'b1;
          selector_MUX_32_reg_4_0_0_0 = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_4 = 1'b1;
          if (OUT_MULTIIF_is_connected_28872_30970[2] == 1'b1)
            begin
              _next_state = S_2;
              selector_MUX_29_reg_11_0_0_0 = 1'b0;
              wrenable_reg_11 = 1'b0;
            end
          else if (OUT_MULTIIF_is_connected_28872_30970[0] == 1'b1)
            begin
              _next_state = S_1;
              selector_MUX_32_reg_4_0_0_0 = 1'b0;
              wrenable_reg_4 = 1'b0;
            end
          else if (OUT_MULTIIF_is_connected_28872_30970[1] == 1'b1)
            begin
              _next_state = S_5;
              done_port = 1'b1;
              selector_MUX_29_reg_11_0_0_0 = 1'b0;
              selector_MUX_32_reg_4_0_0_0 = 1'b0;
              wrenable_reg_11 = 1'b0;
              wrenable_reg_4 = 1'b0;
            end
          else
            begin
              _next_state = S_6;
              done_port = 1'b1;
              selector_MUX_29_reg_11_0_0_0 = 1'b0;
              selector_MUX_32_reg_4_0_0_0 = 1'b0;
              wrenable_reg_11 = 1'b0;
              wrenable_reg_4 = 1'b0;
            end
        end
      S_5 :
        begin
          selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0 = 1'b1;
          selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_0_i0_STORE = 1'b1;
          fuselector_PROXY_CTRLN_1_i0_STORE = 1'b1;
          _next_state = S_0;
        end
      S_6 :
        begin
          selector_MUX_18_gimple_return_FU_17_i0_0_0_0 = 1'b1;
          selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1 = 1'b1;
          selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_0_i0_STORE = 1'b1;
          fuselector_PROXY_CTRLN_1_i0_STORE = 1'b1;
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_18_gimple_return_FU_17_i0_0_0_0 = 1'bX;
          selector_MUX_29_reg_11_0_0_0 = 1'bX;
          selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0 = 1'bX;
          selector_MUX_31_reg_3_0_0_0 = 1'bX;
          selector_MUX_32_reg_4_0_0_0 = 1'bX;
          selector_MUX_32_reg_4_0_0_1 = 1'bX;
          selector_MUX_36_reg_8_0_0_0 = 1'bX;
          selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0 = 1'bX;
          selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1 = 1'bX;
          selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_10 = 1'bX;
          wrenable_reg_11 = 1'bX;
          wrenable_reg_2 = 1'bX;
          wrenable_reg_3 = 1'bX;
          wrenable_reg_4 = 1'bX;
          wrenable_reg_5 = 1'bX;
          wrenable_reg_6 = 1'bX;
          wrenable_reg_7 = 1'bX;
          wrenable_reg_8 = 1'bX;
          wrenable_reg_9 = 1'bX;
        end
    endcase
  end
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Marco Lattuada <marco.lattuada@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module flipflop_AR(clock, reset, in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input clock;
  input reset;
  input in1;
  // OUT
  output out1;
  
  reg reg_out1 =0;
  assign out1 = reg_out1;
  always @(posedge clock )
    if (reset == 1'b0)
      reg_out1 <= {BITSIZE_out1{1'b0}};
    else
      reg_out1 <= in1;
endmodule

// Top component for is_connected
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module is_connected(clock, reset, start_port, done_port, return_port, proxy_out1_28867, proxy_out1_28868, proxy_out1_28870, proxy_in1_28867, proxy_in2_28867, proxy_in3_28867, proxy_sel_LOAD_28867, proxy_sel_STORE_28867, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, proxy_in1_28870, proxy_in2_28870, proxy_in3_28870, proxy_sel_LOAD_28870, proxy_sel_STORE_28870);
  parameter MEM_var_28867_28882=1024, MEM_var_28868_28882=2048, MEM_var_28870_28882=4096;
  // IN
  input clock;
  input reset;
  input start_port;
  input [15:0] proxy_out1_28867;
  input [15:0] proxy_out1_28868;
  input [15:0] proxy_out1_28870;
  // OUT
  output done_port;
  output signed [7:0] return_port;
  output [15:0] proxy_in1_28867;
  output [27:0] proxy_in2_28867;
  output [7:0] proxy_in3_28867;
  output [1:0] proxy_sel_LOAD_28867;
  output [1:0] proxy_sel_STORE_28867;
  output [15:0] proxy_in1_28868;
  output [27:0] proxy_in2_28868;
  output [7:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output [15:0] proxy_in1_28870;
  output [27:0] proxy_in2_28870;
  output [7:0] proxy_in3_28870;
  output [1:0] proxy_sel_LOAD_28870;
  output [1:0] proxy_sel_STORE_28870;
  // Component and signal declarations
  wire [1:0] OUT_MULTIIF_is_connected_28872_30956;
  wire [2:0] OUT_MULTIIF_is_connected_28872_30970;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_PROXY_CTRLN_0_i0_LOAD;
  wire fuselector_PROXY_CTRLN_0_i0_STORE;
  wire fuselector_PROXY_CTRLN_1_i0_LOAD;
  wire fuselector_PROXY_CTRLN_1_i0_STORE;
  wire fuselector_PROXY_CTRLN_2_i0_LOAD;
  wire fuselector_PROXY_CTRLN_2_i0_STORE;
  wire selector_MUX_18_gimple_return_FU_17_i0_0_0_0;
  wire selector_MUX_29_reg_11_0_0_0;
  wire selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0;
  wire selector_MUX_31_reg_3_0_0_0;
  wire selector_MUX_32_reg_4_0_0_0;
  wire selector_MUX_32_reg_4_0_0_1;
  wire selector_MUX_36_reg_8_0_0_0;
  wire selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0;
  wire selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1;
  wire selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0;
  wire wrenable_reg_0;
  wire wrenable_reg_1;
  wire wrenable_reg_10;
  wire wrenable_reg_11;
  wire wrenable_reg_2;
  wire wrenable_reg_3;
  wire wrenable_reg_4;
  wire wrenable_reg_5;
  wire wrenable_reg_6;
  wire wrenable_reg_7;
  wire wrenable_reg_8;
  wire wrenable_reg_9;
  
  controller_is_connected Controller_i (.done_port(done_delayed_REG_signal_in), .selector_MUX_18_gimple_return_FU_17_i0_0_0_0(selector_MUX_18_gimple_return_FU_17_i0_0_0_0), .selector_MUX_29_reg_11_0_0_0(selector_MUX_29_reg_11_0_0_0), .selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0(selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0), .selector_MUX_31_reg_3_0_0_0(selector_MUX_31_reg_3_0_0_0), .selector_MUX_32_reg_4_0_0_0(selector_MUX_32_reg_4_0_0_0), .selector_MUX_32_reg_4_0_0_1(selector_MUX_32_reg_4_0_0_1), .selector_MUX_36_reg_8_0_0_0(selector_MUX_36_reg_8_0_0_0), .selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0(selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0), .selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1(selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1), .selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0(selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0), .fuselector_PROXY_CTRLN_0_i0_LOAD(fuselector_PROXY_CTRLN_0_i0_LOAD), .fuselector_PROXY_CTRLN_0_i0_STORE(fuselector_PROXY_CTRLN_0_i0_STORE), .fuselector_PROXY_CTRLN_1_i0_LOAD(fuselector_PROXY_CTRLN_1_i0_LOAD), .fuselector_PROXY_CTRLN_1_i0_STORE(fuselector_PROXY_CTRLN_1_i0_STORE), .fuselector_PROXY_CTRLN_2_i0_LOAD(fuselector_PROXY_CTRLN_2_i0_LOAD), .fuselector_PROXY_CTRLN_2_i0_STORE(fuselector_PROXY_CTRLN_2_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_MULTIIF_is_connected_28872_30956(OUT_MULTIIF_is_connected_28872_30956), .OUT_MULTIIF_is_connected_28872_30970(OUT_MULTIIF_is_connected_28872_30970), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_is_connected #(.MEM_var_28867_28882(MEM_var_28867_28882), .MEM_var_28868_28882(MEM_var_28868_28882), .MEM_var_28870_28882(MEM_var_28870_28882)) Datapath_i (.return_port(return_port), .proxy_in1_28867(proxy_in1_28867), .proxy_in2_28867(proxy_in2_28867), .proxy_in3_28867(proxy_in3_28867), .proxy_sel_LOAD_28867(proxy_sel_LOAD_28867), .proxy_sel_STORE_28867(proxy_sel_STORE_28867), .proxy_in1_28868(proxy_in1_28868), .proxy_in2_28868(proxy_in2_28868), .proxy_in3_28868(proxy_in3_28868), .proxy_sel_LOAD_28868(proxy_sel_LOAD_28868), .proxy_sel_STORE_28868(proxy_sel_STORE_28868), .proxy_in1_28870(proxy_in1_28870), .proxy_in2_28870(proxy_in2_28870), .proxy_in3_28870(proxy_in3_28870), .proxy_sel_LOAD_28870(proxy_sel_LOAD_28870), .proxy_sel_STORE_28870(proxy_sel_STORE_28870), .OUT_MULTIIF_is_connected_28872_30956(OUT_MULTIIF_is_connected_28872_30956), .OUT_MULTIIF_is_connected_28872_30970(OUT_MULTIIF_is_connected_28872_30970), .clock(clock), .reset(reset), .proxy_out1_28867(proxy_out1_28867), .proxy_out1_28868(proxy_out1_28868), .proxy_out1_28870(proxy_out1_28870), .selector_MUX_18_gimple_return_FU_17_i0_0_0_0(selector_MUX_18_gimple_return_FU_17_i0_0_0_0), .selector_MUX_29_reg_11_0_0_0(selector_MUX_29_reg_11_0_0_0), .selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0(selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0), .selector_MUX_31_reg_3_0_0_0(selector_MUX_31_reg_3_0_0_0), .selector_MUX_32_reg_4_0_0_0(selector_MUX_32_reg_4_0_0_0), .selector_MUX_32_reg_4_0_0_1(selector_MUX_32_reg_4_0_0_1), .selector_MUX_36_reg_8_0_0_0(selector_MUX_36_reg_8_0_0_0), .selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0(selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0), .selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1(selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1), .selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0(selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0), .fuselector_PROXY_CTRLN_0_i0_LOAD(fuselector_PROXY_CTRLN_0_i0_LOAD), .fuselector_PROXY_CTRLN_0_i0_STORE(fuselector_PROXY_CTRLN_0_i0_STORE), .fuselector_PROXY_CTRLN_1_i0_LOAD(fuselector_PROXY_CTRLN_1_i0_LOAD), .fuselector_PROXY_CTRLN_1_i0_STORE(fuselector_PROXY_CTRLN_1_i0_STORE), .fuselector_PROXY_CTRLN_2_i0_LOAD(fuselector_PROXY_CTRLN_2_i0_LOAD), .fuselector_PROXY_CTRLN_2_i0_STORE(fuselector_PROXY_CTRLN_2_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module UIdata_converter_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  generate
  if (BITSIZE_out1 <= BITSIZE_in1)
  begin
    assign out1 = in1[BITSIZE_out1-1:0];
  end
  else
  begin
    assign out1 = {{(BITSIZE_out1-BITSIZE_in1){1'b0}},in1};
  end
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module IUdata_converter_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  generate
  if (BITSIZE_out1 <= BITSIZE_in1)
  begin
    assign out1 = in1[BITSIZE_out1-1:0];
  end
  else
  begin
    assign out1 = {{(BITSIZE_out1-BITSIZE_in1){in1[BITSIZE_in1-1]}},in1};
  end
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module BMEMORY_CTRLN(clock, in1, in2, in3, in4, sel_LOAD, sel_STORE, out1, Min_oe_ram, Mout_oe_ram, Min_we_ram, Mout_we_ram, Min_addr_ram, Mout_addr_ram, M_Rdata_ram, Min_Wdata_ram, Mout_Wdata_ram, Min_data_ram_size, Mout_data_ram_size, M_DataRdy);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2, BITSIZE_in2=1, PORTSIZE_in2=2, BITSIZE_in3=1, PORTSIZE_in3=2, BITSIZE_in4=1, PORTSIZE_in4=2, BITSIZE_sel_LOAD=1, PORTSIZE_sel_LOAD=2, BITSIZE_sel_STORE=1, PORTSIZE_sel_STORE=2, BITSIZE_out1=1, PORTSIZE_out1=2, BITSIZE_Min_oe_ram=1, PORTSIZE_Min_oe_ram=2, BITSIZE_Min_we_ram=1, PORTSIZE_Min_we_ram=2, BITSIZE_Mout_oe_ram=1, PORTSIZE_Mout_oe_ram=2, BITSIZE_Mout_we_ram=1, PORTSIZE_Mout_we_ram=2, BITSIZE_M_DataRdy=1, PORTSIZE_M_DataRdy=2, BITSIZE_Min_addr_ram=1, PORTSIZE_Min_addr_ram=2, BITSIZE_Mout_addr_ram=1, PORTSIZE_Mout_addr_ram=2, BITSIZE_M_Rdata_ram=8, PORTSIZE_M_Rdata_ram=2, BITSIZE_Min_Wdata_ram=8, PORTSIZE_Min_Wdata_ram=2, BITSIZE_Mout_Wdata_ram=8, PORTSIZE_Mout_Wdata_ram=2, BITSIZE_Min_data_ram_size=1, PORTSIZE_Min_data_ram_size=2, BITSIZE_Mout_data_ram_size=1, PORTSIZE_Mout_data_ram_size=2;
  // IN
  input clock;
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  input [(PORTSIZE_in2*BITSIZE_in2)+(-1):0] in2;
  input [(PORTSIZE_in3*BITSIZE_in3)+(-1):0] in3;
  input [PORTSIZE_in4-1:0] in4;
  input [PORTSIZE_sel_LOAD-1:0] sel_LOAD;
  input [PORTSIZE_sel_STORE-1:0] sel_STORE;
  input [PORTSIZE_Min_oe_ram-1:0] Min_oe_ram;
  input [PORTSIZE_Min_we_ram-1:0] Min_we_ram;
  input [(PORTSIZE_Min_addr_ram*BITSIZE_Min_addr_ram)+(-1):0] Min_addr_ram;
  input [(PORTSIZE_M_Rdata_ram*BITSIZE_M_Rdata_ram)+(-1):0] M_Rdata_ram;
  input [(PORTSIZE_Min_Wdata_ram*BITSIZE_Min_Wdata_ram)+(-1):0] Min_Wdata_ram;
  input [(PORTSIZE_Min_data_ram_size*BITSIZE_Min_data_ram_size)+(-1):0] Min_data_ram_size;
  input [PORTSIZE_M_DataRdy-1:0] M_DataRdy;
  // OUT
  output [(PORTSIZE_out1*BITSIZE_out1)+(-1):0] out1;
  output [PORTSIZE_Mout_oe_ram-1:0] Mout_oe_ram;
  output [PORTSIZE_Mout_we_ram-1:0] Mout_we_ram;
  output [(PORTSIZE_Mout_addr_ram*BITSIZE_Mout_addr_ram)+(-1):0] Mout_addr_ram;
  output [(PORTSIZE_Mout_Wdata_ram*BITSIZE_Mout_Wdata_ram)+(-1):0] Mout_Wdata_ram;
  output [(PORTSIZE_Mout_data_ram_size*BITSIZE_Mout_data_ram_size)+(-1):0] Mout_data_ram_size;
  
  parameter max_n_writes = PORTSIZE_sel_STORE > PORTSIZE_Mout_we_ram ? PORTSIZE_sel_STORE : PORTSIZE_Mout_we_ram;
  parameter max_n_reads = PORTSIZE_sel_LOAD > PORTSIZE_Mout_oe_ram ? PORTSIZE_sel_STORE : PORTSIZE_Mout_oe_ram;
  parameter max_n_rw = max_n_writes > max_n_reads ? max_n_writes : max_n_reads;
  wire  [(PORTSIZE_in2*BITSIZE_in2)-1:0] tmp_addr;
  wire [PORTSIZE_sel_LOAD-1:0] int_sel_LOAD;
  wire [PORTSIZE_sel_STORE-1:0] int_sel_STORE;
  assign int_sel_LOAD = sel_LOAD & in4;
  assign int_sel_STORE = sel_STORE & in4;
  assign tmp_addr = in2;
  generate
  genvar i;
    for (i=0; i<max_n_rw; i=i+1)
    begin : L0
      assign Mout_addr_ram[(i+1)*BITSIZE_Mout_addr_ram-1:i*BITSIZE_Mout_addr_ram] = ((i < PORTSIZE_sel_LOAD && int_sel_LOAD[i]) || (i < PORTSIZE_sel_STORE && int_sel_STORE[i])) ? (tmp_addr[(i+1)*BITSIZE_in2-1:i*BITSIZE_in2]) : Min_addr_ram[(i+1)*BITSIZE_Min_addr_ram-1:i*BITSIZE_Min_addr_ram];
    end
    endgenerate
  assign Mout_oe_ram = int_sel_LOAD | Min_oe_ram;
  assign Mout_we_ram = int_sel_STORE | Min_we_ram;
  generate
    for (i=0; i<max_n_reads; i=i+1)
    begin : L1
      assign out1[(i+1)*BITSIZE_out1-1:i*BITSIZE_out1] = M_Rdata_ram[i*BITSIZE_M_Rdata_ram+BITSIZE_out1-1:i*BITSIZE_M_Rdata_ram];
  end
  endgenerate
  generate
    for (i=0; i<max_n_rw; i=i+1)
    begin : L2
      assign Mout_Wdata_ram[(i+1)*BITSIZE_Mout_Wdata_ram-1:i*BITSIZE_Mout_Wdata_ram] = int_sel_STORE[i] ? in1[(i+1)*BITSIZE_in1-1:i*BITSIZE_in1] : Min_Wdata_ram[(i+1)*BITSIZE_Min_Wdata_ram-1:i*BITSIZE_Min_Wdata_ram];
  end
  endgenerate
  generate
    for (i=0; i<max_n_rw; i=i+1)
    begin : L3
      assign Mout_data_ram_size[(i+1)*BITSIZE_Mout_data_ram_size-1:i*BITSIZE_Mout_data_ram_size] = ((i < PORTSIZE_sel_LOAD && int_sel_LOAD[i]) || (i < PORTSIZE_sel_STORE && int_sel_STORE[i])) ? (in3[(i+1)*BITSIZE_in3-1:i*BITSIZE_in3]) : Min_data_ram_size[(i+1)*BITSIZE_Min_data_ram_size-1:i*BITSIZE_Min_data_ram_size];
    end
    endgenerate

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module cond_expr_FU(in1, in2, in3, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_in3=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  input signed [BITSIZE_in3-1:0] in3;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  assign out1 = in1 != 0 ? in2 : in3;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module eq_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 == in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module gt_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 > in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module le_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 <= in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module lt_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 < in2;

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module plus_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  assign out1 = in1 + in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_bit_and_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 & in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2016-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_bit_ior_concat_expr_FU(in1, in2, in3, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_in3=1, BITSIZE_out1=1, OFFSET_PARAMETER=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  input [BITSIZE_in3-1:0] in3;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  parameter nbit_out = BITSIZE_out1 > OFFSET_PARAMETER ? BITSIZE_out1 : 1+OFFSET_PARAMETER;
  wire [nbit_out-1:0] tmp_in1;
  wire [OFFSET_PARAMETER-1:0] tmp_in2;
  generate
    if(BITSIZE_in1 >= nbit_out)
      assign tmp_in1=in1[nbit_out-1:0];
    else
      assign tmp_in1={{(nbit_out-BITSIZE_in1){1'b0}},in1};
  endgenerate
  generate
    if(BITSIZE_in2 >= OFFSET_PARAMETER)
      assign tmp_in2=in2[OFFSET_PARAMETER-1:0];
    else
      assign tmp_in2={{(OFFSET_PARAMETER-BITSIZE_in2){1'b0}},in2};
  endgenerate
  assign out1 = {tmp_in1[nbit_out-1:OFFSET_PARAMETER] , tmp_in2};
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_cond_expr_FU(in1, in2, in3, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_in3=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  input [BITSIZE_in3-1:0] in3;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 != 0 ? in2 : in3;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_lshift_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1, PRECISION=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  `ifndef _SIM_HAVE_CLOG2
    function integer log2;
       input integer value;
       integer temp_value;
      begin
        temp_value = value-1;
        for (log2=0; temp_value>0; log2=log2+1)
          temp_value = temp_value>>1;
      end
    endfunction
  `endif
  `ifdef _SIM_HAVE_CLOG2
    parameter arg2_bitsize = $clog2(PRECISION);
  `else
    parameter arg2_bitsize = log2(PRECISION);
  `endif
  generate
    if(BITSIZE_in2 > arg2_bitsize)
      assign out1 = in1 << in2[arg2_bitsize-1:0];
    else
      assign out1 = in1 << in2;
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_rshift_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1, PRECISION=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  `ifndef _SIM_HAVE_CLOG2
    function integer log2;
       input integer value;
       integer temp_value;
      begin
        temp_value = value-1;
        for (log2=0; temp_value>0; log2=log2+1)
          temp_value = temp_value>>1;
      end
    endfunction
  `endif
  `ifdef _SIM_HAVE_CLOG2
    parameter arg2_bitsize = $clog2(PRECISION);
  `else
    parameter arg2_bitsize = log2(PRECISION);
  `endif
  generate
    if(BITSIZE_in2 > arg2_bitsize)
      assign out1 = in1 >> (in2[arg2_bitsize-1:0]);
    else
      assign out1 = in1 >> in2;
  endgenerate

endmodule

// Datapath RTL description for kruskalF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_kruskalF(clock, reset, in_port_a, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, proxy_out1_28867, proxy_in1_28867, proxy_in2_28867, proxy_in3_28867, proxy_sel_LOAD_28867, proxy_sel_STORE_28867, proxy_out1_28868, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, proxy_out1_28869, proxy_in1_28869, proxy_in2_28869, proxy_in3_28869, proxy_sel_LOAD_28869, proxy_sel_STORE_28869, proxy_out1_28870, proxy_in1_28870, proxy_in2_28870, proxy_in3_28870, proxy_sel_LOAD_28870, proxy_sel_STORE_28870, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE, fuselector_BMEMORY_CTRLN_130_i0_LOAD, fuselector_BMEMORY_CTRLN_130_i0_STORE, selector_MUX_151_reg_13_0_0_0, selector_MUX_152_reg_14_0_0_0, selector_MUX_153_reg_15_0_0_0, selector_MUX_157_reg_19_0_0_0, selector_MUX_161_reg_22_0_0_0, selector_MUX_165_reg_26_0_0_0, selector_MUX_166_reg_27_0_0_0, selector_MUX_167_reg_28_0_0_0, selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0, selector_MUX_175_reg_35_0_0_0, selector_MUX_176_reg_36_0_0_0, selector_MUX_177_reg_37_0_0_0, selector_MUX_192_reg_50_0_0_0, selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0, selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0, selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1, selector_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0, selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0, selector_MUX_50_PROXY_CTRLN_7_i0_0_0_0, selector_MUX_50_PROXY_CTRLN_7_i0_0_0_1, selector_MUX_55_PROXY_CTRLN_8_i0_1_0_0, selector_MUX_55_PROXY_CTRLN_8_i0_1_0_1, selector_MUX_55_PROXY_CTRLN_8_i0_1_1_0, selector_MUX_59_PROXY_CTRLN_8_i1_1_0_0, selector_MUX_63_PROXY_CTRLN_9_i0_1_0_0, selector_MUX_63_PROXY_CTRLN_9_i0_1_0_1, fuselector_PROXY_CTRLN_6_i0_LOAD, fuselector_PROXY_CTRLN_6_i0_STORE, fuselector_PROXY_CTRLN_7_i0_LOAD, fuselector_PROXY_CTRLN_7_i0_STORE, fuselector_PROXY_CTRLN_8_i0_LOAD, fuselector_PROXY_CTRLN_8_i0_STORE, fuselector_PROXY_CTRLN_8_i1_LOAD, fuselector_PROXY_CTRLN_8_i1_STORE, fuselector_PROXY_CTRLN_9_i0_LOAD, fuselector_PROXY_CTRLN_9_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_23, wrenable_reg_24, wrenable_reg_25, wrenable_reg_26, wrenable_reg_27, wrenable_reg_28, wrenable_reg_29, wrenable_reg_3, wrenable_reg_30, wrenable_reg_31, wrenable_reg_32, wrenable_reg_33, wrenable_reg_34, wrenable_reg_35, wrenable_reg_36, wrenable_reg_37, wrenable_reg_38, wrenable_reg_39, wrenable_reg_4, wrenable_reg_40, wrenable_reg_41, wrenable_reg_42, wrenable_reg_43, wrenable_reg_44, wrenable_reg_45, wrenable_reg_46, wrenable_reg_47, wrenable_reg_48, wrenable_reg_49, wrenable_reg_5, wrenable_reg_50, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_kruskalF_28880_29856, OUT_CONDITION_kruskalF_28880_29870, OUT_CONDITION_kruskalF_28880_30083, OUT_CONDITION_kruskalF_28880_30098, OUT_CONDITION_kruskalF_28880_30104, OUT_CONDITION_kruskalF_28880_30109, OUT_MULTIIF_kruskalF_28880_30982, OUT_MULTIIF_kruskalF_28880_30989);
  parameter MEM_var_28859_28880=5120, MEM_var_28861_28880=6144, MEM_var_28862_28880=7168, MEM_var_28864_28880=8192, MEM_var_28865_28880=9216, MEM_var_28866_28880=10240, MEM_var_28867_28882=1024, MEM_var_28868_28882=2048, MEM_var_28869_28882=3072, MEM_var_28870_28882=4096;
  // IN
  input clock;
  input reset;
  input [31:0] in_port_a;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [27:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [15:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [15:0] proxy_out1_28867;
  input [15:0] proxy_out1_28868;
  input [15:0] proxy_out1_28869;
  input [15:0] proxy_out1_28870;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [27:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE;
  input fuselector_BMEMORY_CTRLN_130_i0_LOAD;
  input fuselector_BMEMORY_CTRLN_130_i0_STORE;
  input selector_MUX_151_reg_13_0_0_0;
  input selector_MUX_152_reg_14_0_0_0;
  input selector_MUX_153_reg_15_0_0_0;
  input selector_MUX_157_reg_19_0_0_0;
  input selector_MUX_161_reg_22_0_0_0;
  input selector_MUX_165_reg_26_0_0_0;
  input selector_MUX_166_reg_27_0_0_0;
  input selector_MUX_167_reg_28_0_0_0;
  input selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0;
  input selector_MUX_175_reg_35_0_0_0;
  input selector_MUX_176_reg_36_0_0_0;
  input selector_MUX_177_reg_37_0_0_0;
  input selector_MUX_192_reg_50_0_0_0;
  input selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0;
  input selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0;
  input selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1;
  input selector_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0;
  input selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0;
  input selector_MUX_50_PROXY_CTRLN_7_i0_0_0_0;
  input selector_MUX_50_PROXY_CTRLN_7_i0_0_0_1;
  input selector_MUX_55_PROXY_CTRLN_8_i0_1_0_0;
  input selector_MUX_55_PROXY_CTRLN_8_i0_1_0_1;
  input selector_MUX_55_PROXY_CTRLN_8_i0_1_1_0;
  input selector_MUX_59_PROXY_CTRLN_8_i1_1_0_0;
  input selector_MUX_63_PROXY_CTRLN_9_i0_1_0_0;
  input selector_MUX_63_PROXY_CTRLN_9_i0_1_0_1;
  input fuselector_PROXY_CTRLN_6_i0_LOAD;
  input fuselector_PROXY_CTRLN_6_i0_STORE;
  input fuselector_PROXY_CTRLN_7_i0_LOAD;
  input fuselector_PROXY_CTRLN_7_i0_STORE;
  input fuselector_PROXY_CTRLN_8_i0_LOAD;
  input fuselector_PROXY_CTRLN_8_i0_STORE;
  input fuselector_PROXY_CTRLN_8_i1_LOAD;
  input fuselector_PROXY_CTRLN_8_i1_STORE;
  input fuselector_PROXY_CTRLN_9_i0_LOAD;
  input fuselector_PROXY_CTRLN_9_i0_STORE;
  input wrenable_reg_0;
  input wrenable_reg_1;
  input wrenable_reg_10;
  input wrenable_reg_11;
  input wrenable_reg_12;
  input wrenable_reg_13;
  input wrenable_reg_14;
  input wrenable_reg_15;
  input wrenable_reg_16;
  input wrenable_reg_17;
  input wrenable_reg_18;
  input wrenable_reg_19;
  input wrenable_reg_2;
  input wrenable_reg_20;
  input wrenable_reg_21;
  input wrenable_reg_22;
  input wrenable_reg_23;
  input wrenable_reg_24;
  input wrenable_reg_25;
  input wrenable_reg_26;
  input wrenable_reg_27;
  input wrenable_reg_28;
  input wrenable_reg_29;
  input wrenable_reg_3;
  input wrenable_reg_30;
  input wrenable_reg_31;
  input wrenable_reg_32;
  input wrenable_reg_33;
  input wrenable_reg_34;
  input wrenable_reg_35;
  input wrenable_reg_36;
  input wrenable_reg_37;
  input wrenable_reg_38;
  input wrenable_reg_39;
  input wrenable_reg_4;
  input wrenable_reg_40;
  input wrenable_reg_41;
  input wrenable_reg_42;
  input wrenable_reg_43;
  input wrenable_reg_44;
  input wrenable_reg_45;
  input wrenable_reg_46;
  input wrenable_reg_47;
  input wrenable_reg_48;
  input wrenable_reg_49;
  input wrenable_reg_5;
  input wrenable_reg_50;
  input wrenable_reg_6;
  input wrenable_reg_7;
  input wrenable_reg_8;
  input wrenable_reg_9;
  // OUT
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [15:0] proxy_in1_28867;
  output [27:0] proxy_in2_28867;
  output [7:0] proxy_in3_28867;
  output [1:0] proxy_sel_LOAD_28867;
  output [1:0] proxy_sel_STORE_28867;
  output [15:0] proxy_in1_28868;
  output [27:0] proxy_in2_28868;
  output [7:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output [15:0] proxy_in1_28869;
  output [27:0] proxy_in2_28869;
  output [7:0] proxy_in3_28869;
  output [1:0] proxy_sel_LOAD_28869;
  output [1:0] proxy_sel_STORE_28869;
  output [15:0] proxy_in1_28870;
  output [27:0] proxy_in2_28870;
  output [7:0] proxy_in3_28870;
  output [1:0] proxy_sel_LOAD_28870;
  output [1:0] proxy_sel_STORE_28870;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [27:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  output OUT_CONDITION_kruskalF_28880_29856;
  output OUT_CONDITION_kruskalF_28880_29870;
  output OUT_CONDITION_kruskalF_28880_30083;
  output OUT_CONDITION_kruskalF_28880_30098;
  output OUT_CONDITION_kruskalF_28880_30104;
  output OUT_CONDITION_kruskalF_28880_30109;
  output [1:0] OUT_MULTIIF_kruskalF_28880_30982;
  output [1:0] OUT_MULTIIF_kruskalF_28880_30989;
  // Component and signal declarations
  wire null_out_signal_BMEMORY_CTRLN_130_i0_out1_0;
  wire null_out_signal_BMEMORY_CTRLN_130_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_6_i0_out1_0;
  wire [7:0] null_out_signal_PROXY_CTRLN_6_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_7_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_9_i0_out1_1;
  wire [7:0] null_out_signal_array_28859_0_out1_1;
  wire [7:0] null_out_signal_array_28859_0_proxy_out1_0;
  wire [7:0] null_out_signal_array_28859_0_proxy_out1_1;
  wire [7:0] null_out_signal_array_28861_0_out1_1;
  wire [7:0] null_out_signal_array_28861_0_proxy_out1_0;
  wire [7:0] null_out_signal_array_28861_0_proxy_out1_1;
  wire [7:0] null_out_signal_array_28862_0_out1_1;
  wire [7:0] null_out_signal_array_28862_0_proxy_out1_0;
  wire [7:0] null_out_signal_array_28862_0_proxy_out1_1;
  wire [7:0] null_out_signal_array_28864_0_out1_1;
  wire [7:0] null_out_signal_array_28864_0_proxy_out1_0;
  wire [7:0] null_out_signal_array_28864_0_proxy_out1_1;
  wire [7:0] null_out_signal_array_28865_0_out1_0;
  wire [7:0] null_out_signal_array_28865_0_out1_1;
  wire [7:0] null_out_signal_array_28865_0_proxy_out1_0;
  wire [7:0] null_out_signal_array_28865_0_proxy_out1_1;
  wire [7:0] null_out_signal_array_28866_0_out1_0;
  wire [7:0] null_out_signal_array_28866_0_out1_1;
  wire [7:0] null_out_signal_array_28866_0_proxy_out1_0;
  wire [7:0] null_out_signal_array_28866_0_proxy_out1_1;
  wire [7:0] out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_array_28859_0;
  wire [7:0] out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_array_28861_0;
  wire [7:0] out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_array_28862_0;
  wire [7:0] out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_array_28864_0;
  wire signed [7:0] out_IIdata_converter_FU_109_i0_fu_kruskalF_28880_30097;
  wire signed [7:0] out_IIdata_converter_FU_128_i0_fu_kruskalF_28880_30108;
  wire [7:0] out_IUdata_converter_FU_118_i0_fu_kruskalF_28880_30591;
  wire [4:0] out_IUdata_converter_FU_32_i0_fu_kruskalF_28880_30255;
  wire [7:0] out_IUdata_converter_FU_38_i0_fu_kruskalF_28880_30235;
  wire [4:0] out_IUdata_converter_FU_70_i0_fu_kruskalF_28880_30350;
  wire [7:0] out_IUdata_converter_FU_87_i0_fu_kruskalF_28880_30337;
  wire [7:0] out_IUdata_converter_FU_91_i0_fu_kruskalF_28880_30450;
  wire [7:0] out_IUdata_converter_FU_93_i0_fu_kruskalF_28880_30411;
  wire [7:0] out_IUdata_converter_FU_95_i0_fu_kruskalF_28880_30051;
  wire [7:0] out_MUX_151_reg_13_0_0_0;
  wire [7:0] out_MUX_152_reg_14_0_0_0;
  wire [4:0] out_MUX_153_reg_15_0_0_0;
  wire [7:0] out_MUX_157_reg_19_0_0_0;
  wire [4:0] out_MUX_161_reg_22_0_0_0;
  wire [7:0] out_MUX_165_reg_26_0_0_0;
  wire [7:0] out_MUX_166_reg_27_0_0_0;
  wire [4:0] out_MUX_167_reg_28_0_0_0;
  wire [7:0] out_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0;
  wire [7:0] out_MUX_175_reg_35_0_0_0;
  wire [7:0] out_MUX_176_reg_36_0_0_0;
  wire [7:0] out_MUX_177_reg_37_0_0_0;
  wire [31:0] out_MUX_192_reg_50_0_0_0;
  wire [13:0] out_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0;
  wire [7:0] out_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0;
  wire [7:0] out_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1;
  wire [13:0] out_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0;
  wire [7:0] out_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0;
  wire [7:0] out_MUX_50_PROXY_CTRLN_7_i0_0_0_0;
  wire [7:0] out_MUX_50_PROXY_CTRLN_7_i0_0_0_1;
  wire [13:0] out_MUX_55_PROXY_CTRLN_8_i0_1_0_0;
  wire [13:0] out_MUX_55_PROXY_CTRLN_8_i0_1_0_1;
  wire [13:0] out_MUX_55_PROXY_CTRLN_8_i0_1_1_0;
  wire [13:0] out_MUX_59_PROXY_CTRLN_8_i1_1_0_0;
  wire [13:0] out_MUX_63_PROXY_CTRLN_9_i0_1_0_0;
  wire [13:0] out_MUX_63_PROXY_CTRLN_9_i0_1_0_1;
  wire [7:0] out_PROXY_CTRLN_7_i0_PROXY_CTRLN_7_i0;
  wire [7:0] out_PROXY_CTRLN_8_i0_PROXY_CTRLN_8_i0;
  wire [7:0] out_PROXY_CTRLN_8_i1_PROXY_CTRLN_8_i0;
  wire [7:0] out_PROXY_CTRLN_9_i0_PROXY_CTRLN_9_i0;
  wire signed [8:0] out_UIdata_converter_FU_116_i0_fu_kruskalF_28880_29991;
  wire signed [8:0] out_UIdata_converter_FU_127_i0_fu_kruskalF_28880_30106;
  wire signed [5:0] out_UIdata_converter_FU_31_i0_fu_kruskalF_28880_29788;
  wire signed [8:0] out_UIdata_converter_FU_36_i0_fu_kruskalF_28880_29805;
  wire signed [5:0] out_UIdata_converter_FU_42_i0_fu_kruskalF_28880_29853;
  wire signed [5:0] out_UIdata_converter_FU_69_i0_fu_kruskalF_28880_30018;
  wire signed [8:0] out_UIdata_converter_FU_85_i0_fu_kruskalF_28880_30027;
  wire signed [8:0] out_UIdata_converter_FU_89_i0_fu_kruskalF_28880_29912;
  wire signed [8:0] out_UIdata_converter_FU_90_i0_fu_kruskalF_28880_30008;
  wire signed [8:0] out_UIdata_converter_FU_96_i0_fu_kruskalF_28880_30087;
  wire [31:0] out_UUdata_converter_FU_108_i0_fu_kruskalF_28880_29896;
  wire [14:0] out_UUdata_converter_FU_114_i0_fu_kruskalF_28880_30555;
  wire [7:0] out_UUdata_converter_FU_115_i0_fu_kruskalF_28880_29986;
  wire [14:0] out_UUdata_converter_FU_117_i0_fu_kruskalF_28880_30588;
  wire [13:0] out_UUdata_converter_FU_14_i0_fu_kruskalF_28880_30252;
  wire [31:0] out_UUdata_converter_FU_24_i0_fu_kruskalF_28880_30421;
  wire [31:0] out_UUdata_converter_FU_25_i0_fu_kruskalF_28880_29904;
  wire [31:0] out_UUdata_converter_FU_26_i0_fu_kruskalF_28880_30088;
  wire [4:0] out_UUdata_converter_FU_30_i0_fu_kruskalF_28880_29787;
  wire [14:0] out_UUdata_converter_FU_37_i0_fu_kruskalF_28880_30232;
  wire [4:0] out_UUdata_converter_FU_68_i0_fu_kruskalF_28880_30040;
  wire [14:0] out_UUdata_converter_FU_86_i0_fu_kruskalF_28880_30334;
  wire [14:0] out_UUdata_converter_FU_92_i0_fu_kruskalF_28880_30408;
  wire [7:0] out_UUdata_converter_FU_94_i0_fu_kruskalF_28880_30006;
  wire [31:0] out_addr_expr_FU_12_i0_fu_kruskalF_28880_30227;
  wire [13:0] out_addr_expr_FU_13_i0_fu_kruskalF_28880_30273;
  wire [31:0] out_addr_expr_FU_15_i0_fu_kruskalF_28880_30291;
  wire [31:0] out_addr_expr_FU_16_i0_fu_kruskalF_28880_30299;
  wire [31:0] out_addr_expr_FU_17_i0_fu_kruskalF_28880_30307;
  wire [31:0] out_addr_expr_FU_18_i0_fu_kruskalF_28880_30318;
  wire [31:0] out_addr_expr_FU_19_i0_fu_kruskalF_28880_30326;
  wire [31:0] out_addr_expr_FU_20_i0_fu_kruskalF_28880_30330;
  wire [31:0] out_addr_expr_FU_21_i0_fu_kruskalF_28880_30380;
  wire [31:0] out_addr_expr_FU_22_i0_fu_kruskalF_28880_30396;
  wire [31:0] out_addr_expr_FU_23_i0_fu_kruskalF_28880_30466;
  wire signed [7:0] out_cond_expr_FU_8_8_8_8_131_i0_fu_kruskalF_28880_29794;
  wire signed [7:0] out_cond_expr_FU_8_8_8_8_131_i1_fu_kruskalF_28880_29824;
  wire signed [7:0] out_cond_expr_FU_8_8_8_8_131_i2_fu_kruskalF_28880_29960;
  wire signed [7:0] out_cond_expr_FU_8_8_8_8_131_i3_fu_kruskalF_28880_30031;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [1:0] out_const_10;
  wire [4:0] out_const_11;
  wire [4:0] out_const_12;
  wire [2:0] out_const_13;
  wire [7:0] out_const_14;
  wire [11:0] out_const_15;
  wire [13:0] out_const_16;
  wire [12:0] out_const_17;
  wire [12:0] out_const_18;
  wire [12:0] out_const_19;
  wire [7:0] out_const_2;
  wire [12:0] out_const_20;
  wire [13:0] out_const_21;
  wire [13:0] out_const_22;
  wire [7:0] out_const_3;
  wire [1:0] out_const_4;
  wire [4:0] out_const_5;
  wire [7:0] out_const_6;
  wire out_const_7;
  wire [10:0] out_const_8;
  wire [13:0] out_const_9;
  wire [13:0] out_conv_in_port_a_32_14;
  wire signed [7:0] out_conv_out_UIdata_converter_FU_42_i0_fu_kruskalF_28880_29853_I_6_I_8;
  wire [13:0] out_conv_out_UUdata_converter_FU_108_i0_fu_kruskalF_28880_29896_32_14;
  wire [13:0] out_conv_out_addr_expr_FU_12_i0_fu_kruskalF_28880_30227_32_14;
  wire [31:0] out_conv_out_const_15_12_32;
  wire [31:0] out_conv_out_const_16_14_32;
  wire [31:0] out_conv_out_const_17_13_32;
  wire [31:0] out_conv_out_const_18_13_32;
  wire [31:0] out_conv_out_const_19_13_32;
  wire [31:0] out_conv_out_const_20_13_32;
  wire [31:0] out_conv_out_const_21_14_32;
  wire [31:0] out_conv_out_const_22_14_32;
  wire [3:0] out_conv_out_const_5_5_4;
  wire [31:0] out_conv_out_const_8_11_32;
  wire [31:0] out_conv_out_const_9_14_32;
  wire [13:0] out_conv_out_reg_10_reg_10_32_14;
  wire [13:0] out_conv_out_reg_11_reg_11_32_14;
  wire [13:0] out_conv_out_reg_2_reg_2_32_14;
  wire [13:0] out_conv_out_reg_40_reg_40_32_14;
  wire [13:0] out_conv_out_reg_44_reg_44_16_14;
  wire [13:0] out_conv_out_reg_49_reg_49_32_14;
  wire [13:0] out_conv_out_reg_4_reg_4_32_14;
  wire [13:0] out_conv_out_reg_5_reg_5_32_14;
  wire [13:0] out_conv_out_reg_7_reg_7_32_14;
  wire [13:0] out_conv_out_reg_8_reg_8_32_14;
  wire [13:0] out_conv_out_reg_9_reg_9_32_14;
  wire [4:0] out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_7_1_5;
  wire [7:0] out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_8_5_8;
  wire [4:0] out_conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_9_1_5;
  wire [4:0] out_conv_out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_10_1_5;
  wire [7:0] out_conv_out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_11_5_8;
  wire [13:0] out_conv_out_ui_pointer_plus_expr_FU_16_16_16_167_i2_fu_kruskalF_28880_30242_16_14;
  wire [13:0] out_conv_out_ui_pointer_plus_expr_FU_16_16_16_167_i3_fu_kruskalF_28880_30343_16_14;
  wire [13:0] out_conv_out_ui_pointer_plus_expr_FU_16_16_16_167_i4_fu_kruskalF_28880_30417_16_14;
  wire [13:0] out_conv_out_ui_pointer_plus_expr_FU_16_16_16_167_i7_fu_kruskalF_28880_30597_16_14;
  wire [13:0] out_conv_out_ui_pointer_plus_expr_FU_32_32_32_169_i0_fu_kruskalF_28880_30310_32_14;
  wire [13:0] out_conv_out_ui_pointer_plus_expr_FU_32_32_32_169_i1_fu_kruskalF_28880_30430_32_14;
  wire [13:0] out_conv_out_ui_pointer_plus_expr_FU_32_32_32_169_i2_fu_kruskalF_28880_30443_32_14;
  wire out_eq_expr_FU_16_16_16_132_i0_fu_kruskalF_28880_30731;
  wire out_gt_expr_FU_8_0_8_133_i0_fu_kruskalF_28880_30723;
  wire [7:0] out_iu_conv_conn_obj_11_IUdata_converter_FU_iu_conv_0;
  wire [7:0] out_iu_conv_conn_obj_14_IUdata_converter_FU_iu_conv_1;
  wire [7:0] out_iu_conv_conn_obj_16_IUdata_converter_FU_iu_conv_2;
  wire [7:0] out_iu_conv_conn_obj_17_IUdata_converter_FU_iu_conv_3;
  wire [7:0] out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_4;
  wire [7:0] out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_5;
  wire [7:0] out_iu_conv_conn_obj_7_IUdata_converter_FU_iu_conv_6;
  wire out_le_expr_FU_8_8_8_134_i0_fu_kruskalF_28880_29938;
  wire out_lt_expr_FU_16_16_16_135_i0_fu_kruskalF_28880_30735;
  wire [1:0] out_multi_read_cond_FU_39_i0_fu_kruskalF_28880_30982;
  wire [1:0] out_multi_read_cond_FU_88_i0_fu_kruskalF_28880_30989;
  wire out_ne_expr_FU_8_0_8_136_i0_fu_kruskalF_28880_30033;
  wire out_ne_expr_FU_8_0_8_136_i1_fu_kruskalF_28880_30245;
  wire out_ne_expr_FU_8_8_8_137_i0_fu_kruskalF_28880_30729;
  wire signed [7:0] out_plus_expr_FU_8_0_8_138_i0_fu_kruskalF_28880_29815;
  wire out_read_cond_FU_110_i0_fu_kruskalF_28880_30098;
  wire out_read_cond_FU_112_i0_fu_kruskalF_28880_30104;
  wire out_read_cond_FU_129_i0_fu_kruskalF_28880_30109;
  wire out_read_cond_FU_43_i0_fu_kruskalF_28880_29856;
  wire out_read_cond_FU_44_i0_fu_kruskalF_28880_29870;
  wire out_read_cond_FU_97_i0_fu_kruskalF_28880_30083;
  wire [31:0] out_reg_0_reg_0;
  wire [31:0] out_reg_10_reg_10;
  wire [31:0] out_reg_11_reg_11;
  wire [31:0] out_reg_12_reg_12;
  wire [7:0] out_reg_13_reg_13;
  wire [7:0] out_reg_14_reg_14;
  wire [4:0] out_reg_15_reg_15;
  wire [10:0] out_reg_16_reg_16;
  wire out_reg_17_reg_17;
  wire [7:0] out_reg_18_reg_18;
  wire [7:0] out_reg_19_reg_19;
  wire [31:0] out_reg_1_reg_1;
  wire out_reg_20_reg_20;
  wire out_reg_21_reg_21;
  wire [4:0] out_reg_22_reg_22;
  wire out_reg_23_reg_23;
  wire [7:0] out_reg_24_reg_24;
  wire [7:0] out_reg_25_reg_25;
  wire [7:0] out_reg_26_reg_26;
  wire [7:0] out_reg_27_reg_27;
  wire [4:0] out_reg_28_reg_28;
  wire [4:0] out_reg_29_reg_29;
  wire [31:0] out_reg_2_reg_2;
  wire [10:0] out_reg_30_reg_30;
  wire out_reg_31_reg_31;
  wire [7:0] out_reg_32_reg_32;
  wire out_reg_33_reg_33;
  wire out_reg_34_reg_34;
  wire [7:0] out_reg_35_reg_35;
  wire [7:0] out_reg_36_reg_36;
  wire [7:0] out_reg_37_reg_37;
  wire [14:0] out_reg_38_reg_38;
  wire [7:0] out_reg_39_reg_39;
  wire [13:0] out_reg_3_reg_3;
  wire [31:0] out_reg_40_reg_40;
  wire [9:0] out_reg_41_reg_41;
  wire [4:0] out_reg_42_reg_42;
  wire [2:0] out_reg_43_reg_43;
  wire [15:0] out_reg_44_reg_44;
  wire [14:0] out_reg_45_reg_45;
  wire [7:0] out_reg_46_reg_46;
  wire [7:0] out_reg_47_reg_47;
  wire [8:0] out_reg_48_reg_48;
  wire [31:0] out_reg_49_reg_49;
  wire [31:0] out_reg_4_reg_4;
  wire [31:0] out_reg_50_reg_50;
  wire [31:0] out_reg_5_reg_5;
  wire [31:0] out_reg_6_reg_6;
  wire [31:0] out_reg_7_reg_7;
  wire [31:0] out_reg_8_reg_8;
  wire [31:0] out_reg_9_reg_9;
  wire out_truth_and_expr_FU_1_1_1_139_i0_fu_kruskalF_28880_30988;
  wire out_truth_and_expr_FU_1_1_1_139_i1_fu_kruskalF_28880_30995;
  wire out_truth_not_expr_FU_1_1_140_i0_fu_kruskalF_28880_30985;
  wire out_truth_not_expr_FU_1_1_140_i1_fu_kruskalF_28880_30992;
  wire [0:0] out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_7;
  wire [4:0] out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_8;
  wire [0:0] out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_9;
  wire [0:0] out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_10;
  wire [4:0] out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_11;
  wire [0:0] out_ui_bit_and_expr_FU_1_0_1_141_i0_fu_kruskalF_28880_30773;
  wire [0:0] out_ui_bit_and_expr_FU_1_0_1_141_i1_fu_kruskalF_28880_30806;
  wire [0:0] out_ui_bit_and_expr_FU_1_0_1_141_i2_fu_kruskalF_28880_30838;
  wire [0:0] out_ui_bit_and_expr_FU_1_0_1_142_i0_fu_kruskalF_28880_30873;
  wire [0:0] out_ui_bit_and_expr_FU_1_0_1_142_i1_fu_kruskalF_28880_30907;
  wire [0:0] out_ui_bit_and_expr_FU_1_1_1_143_i0_fu_kruskalF_28880_29934;
  wire [2:0] out_ui_bit_and_expr_FU_8_0_8_144_i0_fu_kruskalF_28880_30791;
  wire [2:0] out_ui_bit_and_expr_FU_8_0_8_144_i1_fu_kruskalF_28880_30821;
  wire [2:0] out_ui_bit_and_expr_FU_8_0_8_144_i2_fu_kruskalF_28880_30854;
  wire [2:0] out_ui_bit_and_expr_FU_8_0_8_145_i0_fu_kruskalF_28880_30891;
  wire [2:0] out_ui_bit_and_expr_FU_8_0_8_145_i1_fu_kruskalF_28880_30922;
  wire [6:0] out_ui_bit_ior_concat_expr_FU_146_i0_fu_kruskalF_28880_30281;
  wire [6:0] out_ui_bit_ior_concat_expr_FU_146_i1_fu_kruskalF_28880_30371;
  wire [10:0] out_ui_bit_ior_concat_expr_FU_147_i0_fu_kruskalF_28880_30288;
  wire [10:0] out_ui_bit_ior_concat_expr_FU_147_i1_fu_kruskalF_28880_30377;
  wire [13:0] out_ui_bit_ior_concat_expr_FU_147_i2_fu_kruskalF_28880_30487;
  wire [9:0] out_ui_bit_ior_concat_expr_FU_148_i0_fu_kruskalF_28880_30481;
  wire [9:0] out_ui_bit_ior_concat_expr_FU_149_i0_fu_kruskalF_28880_30545;
  wire [9:0] out_ui_bit_ior_concat_expr_FU_149_i1_fu_kruskalF_28880_30575;
  wire [12:0] out_ui_bit_ior_concat_expr_FU_150_i0_fu_kruskalF_28880_30552;
  wire [12:0] out_ui_bit_ior_concat_expr_FU_150_i1_fu_kruskalF_28880_30581;
  wire [7:0] out_ui_cond_expr_FU_8_8_8_8_151_i0_fu_kruskalF_28880_29929;
  wire [7:0] out_ui_cond_expr_FU_8_8_8_8_151_i1_fu_kruskalF_28880_30064;
  wire [9:0] out_ui_lshift_expr_FU_16_0_16_152_i0_fu_kruskalF_28880_30285;
  wire [9:0] out_ui_lshift_expr_FU_16_0_16_152_i1_fu_kruskalF_28880_30374;
  wire [12:0] out_ui_lshift_expr_FU_16_0_16_152_i2_fu_kruskalF_28880_30484;
  wire [10:0] out_ui_lshift_expr_FU_16_0_16_152_i3_fu_kruskalF_28880_30786;
  wire [10:0] out_ui_lshift_expr_FU_16_0_16_152_i4_fu_kruskalF_28880_30818;
  wire [13:0] out_ui_lshift_expr_FU_16_0_16_152_i5_fu_kruskalF_28880_30850;
  wire [8:0] out_ui_lshift_expr_FU_16_0_16_153_i0_fu_kruskalF_28880_30478;
  wire [9:0] out_ui_lshift_expr_FU_16_0_16_153_i1_fu_kruskalF_28880_30834;
  wire [8:0] out_ui_lshift_expr_FU_16_0_16_154_i0_fu_kruskalF_28880_30542;
  wire [8:0] out_ui_lshift_expr_FU_16_0_16_154_i1_fu_kruskalF_28880_30572;
  wire [9:0] out_ui_lshift_expr_FU_16_0_16_154_i2_fu_kruskalF_28880_30869;
  wire [9:0] out_ui_lshift_expr_FU_16_0_16_154_i3_fu_kruskalF_28880_30904;
  wire [12:0] out_ui_lshift_expr_FU_16_0_16_155_i0_fu_kruskalF_28880_30549;
  wire [12:0] out_ui_lshift_expr_FU_16_0_16_155_i1_fu_kruskalF_28880_30578;
  wire [12:0] out_ui_lshift_expr_FU_16_0_16_155_i2_fu_kruskalF_28880_30886;
  wire [12:0] out_ui_lshift_expr_FU_16_0_16_155_i3_fu_kruskalF_28880_30919;
  wire [5:0] out_ui_lshift_expr_FU_8_0_8_156_i0_fu_kruskalF_28880_30278;
  wire [5:0] out_ui_lshift_expr_FU_8_0_8_156_i1_fu_kruskalF_28880_30368;
  wire [6:0] out_ui_lshift_expr_FU_8_0_8_156_i2_fu_kruskalF_28880_30769;
  wire [6:0] out_ui_lshift_expr_FU_8_0_8_156_i3_fu_kruskalF_28880_30803;
  wire out_ui_ne_expr_FU_32_32_32_157_i0_fu_kruskalF_28880_30733;
  wire out_ui_ne_expr_FU_8_0_8_158_i0_fu_kruskalF_28880_30717;
  wire out_ui_ne_expr_FU_8_0_8_158_i1_fu_kruskalF_28880_30727;
  wire out_ui_ne_expr_FU_8_0_8_159_i0_fu_kruskalF_28880_30719;
  wire out_ui_ne_expr_FU_8_0_8_159_i1_fu_kruskalF_28880_30721;
  wire out_ui_ne_expr_FU_8_0_8_160_i0_fu_kruskalF_28880_30725;
  wire [10:0] out_ui_plus_expr_FU_16_16_16_161_i0_fu_kruskalF_28880_30847;
  wire [9:0] out_ui_plus_expr_FU_16_16_16_161_i1_fu_kruskalF_28880_30883;
  wire [9:0] out_ui_plus_expr_FU_16_16_16_161_i2_fu_kruskalF_28880_30916;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_162_i0_fu_kruskalF_28880_29907;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_163_i0_fu_kruskalF_28880_29813;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_163_i1_fu_kruskalF_28880_30042;
  wire [4:0] out_ui_plus_expr_FU_8_0_8_164_i0_fu_kruskalF_28880_29833;
  wire [4:0] out_ui_plus_expr_FU_8_0_8_164_i1_fu_kruskalF_28880_29855;
  wire [4:0] out_ui_plus_expr_FU_8_0_8_164_i2_fu_kruskalF_28880_30025;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_165_i0_fu_kruskalF_28880_30074;
  wire [5:0] out_ui_plus_expr_FU_8_8_8_166_i0_fu_kruskalF_28880_30765;
  wire [7:0] out_ui_plus_expr_FU_8_8_8_166_i1_fu_kruskalF_28880_30782;
  wire [5:0] out_ui_plus_expr_FU_8_8_8_166_i2_fu_kruskalF_28880_30800;
  wire [7:0] out_ui_plus_expr_FU_8_8_8_166_i3_fu_kruskalF_28880_30815;
  wire [8:0] out_ui_plus_expr_FU_8_8_8_166_i4_fu_kruskalF_28880_30830;
  wire [8:0] out_ui_plus_expr_FU_8_8_8_166_i5_fu_kruskalF_28880_30865;
  wire [8:0] out_ui_plus_expr_FU_8_8_8_166_i6_fu_kruskalF_28880_30901;
  wire [14:0] out_ui_pointer_plus_expr_FU_16_16_16_167_i0_fu_kruskalF_28880_29973;
  wire [14:0] out_ui_pointer_plus_expr_FU_16_16_16_167_i1_fu_kruskalF_28880_30000;
  wire [15:0] out_ui_pointer_plus_expr_FU_16_16_16_167_i2_fu_kruskalF_28880_30242;
  wire [15:0] out_ui_pointer_plus_expr_FU_16_16_16_167_i3_fu_kruskalF_28880_30343;
  wire [15:0] out_ui_pointer_plus_expr_FU_16_16_16_167_i4_fu_kruskalF_28880_30417;
  wire [14:0] out_ui_pointer_plus_expr_FU_16_16_16_167_i5_fu_kruskalF_28880_30456;
  wire [15:0] out_ui_pointer_plus_expr_FU_16_16_16_167_i6_fu_kruskalF_28880_30564;
  wire [15:0] out_ui_pointer_plus_expr_FU_16_16_16_167_i7_fu_kruskalF_28880_30597;
  wire [14:0] out_ui_pointer_plus_expr_FU_16_16_16_167_i8_ui_pointer_plus_expr_FU_16_16_16_167_i8;
  wire [14:0] out_ui_pointer_plus_expr_FU_16_16_16_167_i9_fu_kruskalF_28880_30356;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_0_32_168_i0_fu_kruskalF_28880_30505;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_169_i0_fu_kruskalF_28880_30310;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_169_i1_fu_kruskalF_28880_30430;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_169_i2_fu_kruskalF_28880_30443;
  wire [6:0] out_ui_rshift_expr_FU_16_0_16_170_i0_fu_kruskalF_28880_30777;
  wire [6:0] out_ui_rshift_expr_FU_16_0_16_170_i1_fu_kruskalF_28880_30810;
  wire [9:0] out_ui_rshift_expr_FU_16_0_16_170_i2_fu_kruskalF_28880_30842;
  wire [7:0] out_ui_rshift_expr_FU_16_0_16_171_i0_fu_kruskalF_28880_30825;
  wire [7:0] out_ui_rshift_expr_FU_16_0_16_172_i0_fu_kruskalF_28880_30858;
  wire [7:0] out_ui_rshift_expr_FU_16_0_16_172_i1_fu_kruskalF_28880_30896;
  wire [9:0] out_ui_rshift_expr_FU_16_0_16_173_i0_fu_kruskalF_28880_30877;
  wire [9:0] out_ui_rshift_expr_FU_16_0_16_173_i1_fu_kruskalF_28880_30911;
  wire [4:0] out_ui_rshift_expr_FU_8_0_8_174_i0_fu_kruskalF_28880_30758;
  wire [3:0] out_ui_rshift_expr_FU_8_0_8_174_i1_fu_kruskalF_28880_30762;
  wire [4:0] out_ui_rshift_expr_FU_8_0_8_174_i2_fu_kruskalF_28880_30795;
  wire [3:0] out_ui_rshift_expr_FU_8_0_8_174_i3_fu_kruskalF_28880_30798;
  wire [6:0] out_ui_rshift_expr_FU_8_0_8_174_i4_fu_kruskalF_28880_30828;
  wire [1:0] out_ui_rshift_expr_FU_8_0_8_175_i0_fu_kruskalF_28880_30780;
  wire [1:0] out_ui_rshift_expr_FU_8_0_8_175_i1_fu_kruskalF_28880_30813;
  wire [4:0] out_ui_rshift_expr_FU_8_0_8_175_i2_fu_kruskalF_28880_30845;
  wire [6:0] out_ui_rshift_expr_FU_8_0_8_176_i0_fu_kruskalF_28880_30862;
  wire [6:0] out_ui_rshift_expr_FU_8_0_8_176_i1_fu_kruskalF_28880_30899;
  wire [4:0] out_ui_rshift_expr_FU_8_0_8_177_i0_fu_kruskalF_28880_30880;
  wire [4:0] out_ui_rshift_expr_FU_8_0_8_177_i1_fu_kruskalF_28880_30914;
  wire [7:0] out_vb_assign_conn_obj_10_ASSIGN_VECTOR_BOOL_FU_vb_assign_12;
  wire [7:0] out_vb_assign_conn_obj_12_ASSIGN_VECTOR_BOOL_FU_vb_assign_13;
  wire [7:0] out_vb_assign_conn_obj_13_ASSIGN_VECTOR_BOOL_FU_vb_assign_14;
  wire [7:0] out_vb_assign_conn_obj_15_ASSIGN_VECTOR_BOOL_FU_vb_assign_15;
  wire [7:0] out_vb_assign_conn_obj_18_ASSIGN_VECTOR_BOOL_FU_vb_assign_16;
  wire [7:0] out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_17;
  wire [7:0] out_vb_assign_conn_obj_6_ASSIGN_VECTOR_BOOL_FU_vb_assign_18;
  wire [15:0] sig_in_bus_mergerMout_Wdata_ram0_0;
  wire [27:0] sig_in_bus_mergerMout_addr_ram1_0;
  wire [7:0] sig_in_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_bus_mergerMout_we_ram4_0;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_0;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_1;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_2;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_3;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_4;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_5;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_0;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_1;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_2;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_3;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_4;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_5;
  wire [15:0] sig_in_bus_mergerproxy_in1_288677_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288688_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288699_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_2887010_0;
  wire [27:0] sig_in_bus_mergerproxy_in2_2886711_0;
  wire [27:0] sig_in_bus_mergerproxy_in2_2886812_0;
  wire [27:0] sig_in_bus_mergerproxy_in2_2886913_0;
  wire [27:0] sig_in_bus_mergerproxy_in2_2887014_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_2886715_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_2886816_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_2886917_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_2887018_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886719_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886820_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886921_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2887022_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886723_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886824_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886925_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2887026_0;
  wire [15:0] sig_in_vector_bus_mergerMout_Wdata_ram0_0;
  wire [27:0] sig_in_vector_bus_mergerMout_addr_ram1_0;
  wire [7:0] sig_in_vector_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_vector_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_vector_bus_mergerMout_we_ram4_0;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_0;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_1;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_2;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_3;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_4;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_5;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_0;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_1;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_2;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_3;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_4;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_5;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288677_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288688_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288699_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_2887010_0;
  wire [27:0] sig_in_vector_bus_mergerproxy_in2_2886711_0;
  wire [27:0] sig_in_vector_bus_mergerproxy_in2_2886812_0;
  wire [27:0] sig_in_vector_bus_mergerproxy_in2_2886913_0;
  wire [27:0] sig_in_vector_bus_mergerproxy_in2_2887014_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_2886715_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_2886816_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_2886917_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_2887018_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886719_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886820_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886921_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2887022_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886723_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886824_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886925_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2887026_0;
  wire [15:0] sig_out_bus_mergerMout_Wdata_ram0_;
  wire [27:0] sig_out_bus_mergerMout_addr_ram1_;
  wire [7:0] sig_out_bus_mergerMout_data_ram_size2_;
  wire [1:0] sig_out_bus_mergerMout_oe_ram3_;
  wire [1:0] sig_out_bus_mergerMout_we_ram4_;
  wire [1:0] sig_out_bus_mergerSout_DataRdy5_;
  wire [15:0] sig_out_bus_mergerSout_Rdata_ram6_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288677_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288688_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288699_;
  wire [15:0] sig_out_bus_mergerproxy_in1_2887010_;
  wire [27:0] sig_out_bus_mergerproxy_in2_2886711_;
  wire [27:0] sig_out_bus_mergerproxy_in2_2886812_;
  wire [27:0] sig_out_bus_mergerproxy_in2_2886913_;
  wire [27:0] sig_out_bus_mergerproxy_in2_2887014_;
  wire [7:0] sig_out_bus_mergerproxy_in3_2886715_;
  wire [7:0] sig_out_bus_mergerproxy_in3_2886816_;
  wire [7:0] sig_out_bus_mergerproxy_in3_2886917_;
  wire [7:0] sig_out_bus_mergerproxy_in3_2887018_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886719_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886820_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886921_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2887022_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886723_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886824_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886925_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2887026_;
  
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_10 (.out1(out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_10), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(5), .BITSIZE_out1(5)) ASSIGN_UNSIGNED_FU_u_assign_11 (.out1(out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_11), .in1(out_UUdata_converter_FU_68_i0_fu_kruskalF_28880_30040));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_7 (.out1(out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_7), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(5), .BITSIZE_out1(5)) ASSIGN_UNSIGNED_FU_u_assign_8 (.out1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_8), .in1(out_UUdata_converter_FU_30_i0_fu_kruskalF_28880_29787));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_9 (.out1(out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_9), .in1(out_const_0));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_12 (.out1(out_vb_assign_conn_obj_10_ASSIGN_VECTOR_BOOL_FU_vb_assign_12), .in1(out_const_2));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_13 (.out1(out_vb_assign_conn_obj_12_ASSIGN_VECTOR_BOOL_FU_vb_assign_13), .in1(out_reg_37_reg_37));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_14 (.out1(out_vb_assign_conn_obj_13_ASSIGN_VECTOR_BOOL_FU_vb_assign_14), .in1(out_reg_35_reg_35));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_15 (.out1(out_vb_assign_conn_obj_15_ASSIGN_VECTOR_BOOL_FU_vb_assign_15), .in1(out_reg_47_reg_47));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_16 (.out1(out_vb_assign_conn_obj_18_ASSIGN_VECTOR_BOOL_FU_vb_assign_16), .in1(out_ui_plus_expr_FU_8_0_8_165_i0_fu_kruskalF_28880_30074));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_17 (.out1(out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_17), .in1(out_const_3));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_18 (.out1(out_vb_assign_conn_obj_6_ASSIGN_VECTOR_BOOL_FU_vb_assign_18), .in1(out_const_1));
  BMEMORY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(14), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(1), .PORTSIZE_out1(2), .BITSIZE_Min_oe_ram(1), .PORTSIZE_Min_oe_ram(2), .BITSIZE_Min_we_ram(1), .PORTSIZE_Min_we_ram(2), .BITSIZE_Mout_oe_ram(1), .PORTSIZE_Mout_oe_ram(2), .BITSIZE_Mout_we_ram(1), .PORTSIZE_Mout_we_ram(2), .BITSIZE_M_DataRdy(1), .PORTSIZE_M_DataRdy(2), .BITSIZE_Min_addr_ram(14), .PORTSIZE_Min_addr_ram(2), .BITSIZE_Mout_addr_ram(14), .PORTSIZE_Mout_addr_ram(2), .BITSIZE_M_Rdata_ram(8), .PORTSIZE_M_Rdata_ram(2), .BITSIZE_Min_Wdata_ram(8), .PORTSIZE_Min_Wdata_ram(2), .BITSIZE_Mout_Wdata_ram(8), .PORTSIZE_Mout_Wdata_ram(2), .BITSIZE_Min_data_ram_size(4), .PORTSIZE_Min_data_ram_size(2), .BITSIZE_Mout_data_ram_size(4), .PORTSIZE_Mout_data_ram_size(2)) BMEMORY_CTRLN_130_i0 (.out1({null_out_signal_BMEMORY_CTRLN_130_i0_out1_1, null_out_signal_BMEMORY_CTRLN_130_i0_out1_0}), .Mout_oe_ram(sig_in_vector_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_vector_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_vector_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_vector_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_vector_bus_mergerMout_data_ram_size2_0), .clock(clock), .in1({8'b00000000, out_iu_conv_conn_obj_17_IUdata_converter_FU_iu_conv_3}), .in2({14'b00000000000000, out_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0}), .in3({4'b0000, out_conv_out_const_5_5_4}), .in4({1'b0, out_const_7}), .sel_LOAD({1'b0, fuselector_BMEMORY_CTRLN_130_i0_LOAD}), .sel_STORE({1'b0, fuselector_BMEMORY_CTRLN_130_i0_STORE}), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .M_Rdata_ram(M_Rdata_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .M_DataRdy(M_DataRdy));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_0 (.out1(out_iu_conv_conn_obj_11_IUdata_converter_FU_iu_conv_0), .in1(out_reg_36_reg_36));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_1 (.out1(out_iu_conv_conn_obj_14_IUdata_converter_FU_iu_conv_1), .in1(out_const_14));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_2 (.out1(out_iu_conv_conn_obj_16_IUdata_converter_FU_iu_conv_2), .in1(out_PROXY_CTRLN_8_i0_PROXY_CTRLN_8_i0));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_3 (.out1(out_iu_conv_conn_obj_17_IUdata_converter_FU_iu_conv_3), .in1(out_const_14));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_4 (.out1(out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_4), .in1(out_reg_14_reg_14));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_5 (.out1(out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_5), .in1(out_conv_out_UIdata_converter_FU_42_i0_fu_kruskalF_28880_29853_I_6_I_8));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_6 (.out1(out_iu_conv_conn_obj_7_IUdata_converter_FU_iu_conv_6), .in1(out_const_6));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_151_reg_13_0_0_0 (.out1(out_MUX_151_reg_13_0_0_0), .sel(selector_MUX_151_reg_13_0_0_0), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_array_28859_0), .in2(out_cond_expr_FU_8_8_8_8_131_i0_fu_kruskalF_28880_29794));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_152_reg_14_0_0_0 (.out1(out_MUX_152_reg_14_0_0_0), .sel(selector_MUX_152_reg_14_0_0_0), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_array_28859_0), .in2(out_cond_expr_FU_8_8_8_8_131_i1_fu_kruskalF_28880_29824));
  MUX_GATE #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(5)) MUX_153_reg_15_0_0_0 (.out1(out_MUX_153_reg_15_0_0_0), .sel(selector_MUX_153_reg_15_0_0_0), .in1(out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_7_1_5), .in2(out_ui_plus_expr_FU_8_0_8_164_i0_fu_kruskalF_28880_29833));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_157_reg_19_0_0_0 (.out1(out_MUX_157_reg_19_0_0_0), .sel(selector_MUX_157_reg_19_0_0_0), .in1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_8_5_8), .in2(out_ui_plus_expr_FU_8_0_8_163_i0_fu_kruskalF_28880_29813));
  MUX_GATE #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(5)) MUX_161_reg_22_0_0_0 (.out1(out_MUX_161_reg_22_0_0_0), .sel(selector_MUX_161_reg_22_0_0_0), .in1(out_conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_9_1_5), .in2(out_ui_plus_expr_FU_8_0_8_164_i1_fu_kruskalF_28880_29855));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_165_reg_26_0_0_0 (.out1(out_MUX_165_reg_26_0_0_0), .sel(selector_MUX_165_reg_26_0_0_0), .in1(out_reg_32_reg_32), .in2(out_conv_out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_11_5_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_166_reg_27_0_0_0 (.out1(out_MUX_166_reg_27_0_0_0), .sel(selector_MUX_166_reg_27_0_0_0), .in1(out_reg_36_reg_36), .in2(out_cond_expr_FU_8_8_8_8_131_i3_fu_kruskalF_28880_30031));
  MUX_GATE #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(5)) MUX_167_reg_28_0_0_0 (.out1(out_MUX_167_reg_28_0_0_0), .sel(selector_MUX_167_reg_28_0_0_0), .in1(out_conv_out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_10_1_5), .in2(out_ui_plus_expr_FU_8_0_8_164_i2_fu_kruskalF_28880_30025));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0 (.out1(out_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0), .sel(selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0), .in1(out_vb_assign_conn_obj_15_ASSIGN_VECTOR_BOOL_FU_vb_assign_15), .in2(out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_17));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_175_reg_35_0_0_0 (.out1(out_MUX_175_reg_35_0_0_0), .sel(selector_MUX_175_reg_35_0_0_0), .in1(out_reg_24_reg_24), .in2(out_ui_cond_expr_FU_8_8_8_8_151_i0_fu_kruskalF_28880_29929));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_176_reg_36_0_0_0 (.out1(out_MUX_176_reg_36_0_0_0), .sel(selector_MUX_176_reg_36_0_0_0), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_array_28861_0), .in2(out_cond_expr_FU_8_8_8_8_131_i2_fu_kruskalF_28880_29960));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_177_reg_37_0_0_0 (.out1(out_MUX_177_reg_37_0_0_0), .sel(selector_MUX_177_reg_37_0_0_0), .in1(out_reg_25_reg_25), .in2(out_ui_cond_expr_FU_8_8_8_8_151_i1_fu_kruskalF_28880_30064));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_192_reg_50_0_0_0 (.out1(out_MUX_192_reg_50_0_0_0), .sel(selector_MUX_192_reg_50_0_0_0), .in1(out_reg_0_reg_0), .in2(out_ui_plus_expr_FU_32_0_32_162_i0_fu_kruskalF_28880_29907));
  MUX_GATE #(.BITSIZE_in1(14), .BITSIZE_in2(14), .BITSIZE_out1(14)) MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0 (.out1(out_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0), .sel(selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0), .in1(out_conv_out_reg_2_reg_2_32_14), .in2(out_conv_out_addr_expr_FU_12_i0_fu_kruskalF_28880_30227_32_14));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0 (.out1(out_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0), .sel(selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0), .in1(out_vb_assign_conn_obj_10_ASSIGN_VECTOR_BOOL_FU_vb_assign_12), .in2(out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_17));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1 (.out1(out_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1), .sel(selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1), .in1(out_vb_assign_conn_obj_6_ASSIGN_VECTOR_BOOL_FU_vb_assign_18), .in2(out_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0));
  MUX_GATE #(.BITSIZE_in1(14), .BITSIZE_in2(14), .BITSIZE_out1(14)) MUX_25_BMEMORY_CTRLN_130_i0_1_0_0 (.out1(out_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0), .sel(selector_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0), .in1(out_conv_out_reg_44_reg_44_16_14), .in2(out_conv_out_ui_pointer_plus_expr_FU_16_16_16_167_i7_fu_kruskalF_28880_30597_16_14));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0 (.out1(out_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0), .sel(selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0), .in1(out_iu_conv_conn_obj_11_IUdata_converter_FU_iu_conv_0), .in2(out_iu_conv_conn_obj_7_IUdata_converter_FU_iu_conv_6));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_50_PROXY_CTRLN_7_i0_0_0_0 (.out1(out_MUX_50_PROXY_CTRLN_7_i0_0_0_0), .sel(selector_MUX_50_PROXY_CTRLN_7_i0_0_0_0), .in1(out_vb_assign_conn_obj_18_ASSIGN_VECTOR_BOOL_FU_vb_assign_16), .in2(out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_17));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_50_PROXY_CTRLN_7_i0_0_0_1 (.out1(out_MUX_50_PROXY_CTRLN_7_i0_0_0_1), .sel(selector_MUX_50_PROXY_CTRLN_7_i0_0_0_1), .in1(out_vb_assign_conn_obj_6_ASSIGN_VECTOR_BOOL_FU_vb_assign_18), .in2(out_MUX_50_PROXY_CTRLN_7_i0_0_0_0));
  MUX_GATE #(.BITSIZE_in1(14), .BITSIZE_in2(14), .BITSIZE_out1(14)) MUX_55_PROXY_CTRLN_8_i0_1_0_0 (.out1(out_MUX_55_PROXY_CTRLN_8_i0_1_0_0), .sel(selector_MUX_55_PROXY_CTRLN_8_i0_1_0_0), .in1(out_conv_out_reg_49_reg_49_32_14), .in2(out_conv_out_reg_40_reg_40_32_14));
  MUX_GATE #(.BITSIZE_in1(14), .BITSIZE_in2(14), .BITSIZE_out1(14)) MUX_55_PROXY_CTRLN_8_i0_1_0_1 (.out1(out_MUX_55_PROXY_CTRLN_8_i0_1_0_1), .sel(selector_MUX_55_PROXY_CTRLN_8_i0_1_0_1), .in1(out_conv_out_UUdata_converter_FU_108_i0_fu_kruskalF_28880_29896_32_14), .in2(out_conv_out_ui_pointer_plus_expr_FU_32_32_32_169_i1_fu_kruskalF_28880_30430_32_14));
  MUX_GATE #(.BITSIZE_in1(14), .BITSIZE_in2(14), .BITSIZE_out1(14)) MUX_55_PROXY_CTRLN_8_i0_1_1_0 (.out1(out_MUX_55_PROXY_CTRLN_8_i0_1_1_0), .sel(selector_MUX_55_PROXY_CTRLN_8_i0_1_1_0), .in1(out_MUX_55_PROXY_CTRLN_8_i0_1_0_0), .in2(out_MUX_55_PROXY_CTRLN_8_i0_1_0_1));
  MUX_GATE #(.BITSIZE_in1(14), .BITSIZE_in2(14), .BITSIZE_out1(14)) MUX_59_PROXY_CTRLN_8_i1_1_0_0 (.out1(out_MUX_59_PROXY_CTRLN_8_i1_1_0_0), .sel(selector_MUX_59_PROXY_CTRLN_8_i1_1_0_0), .in1(out_conv_out_ui_pointer_plus_expr_FU_32_32_32_169_i0_fu_kruskalF_28880_30310_32_14), .in2(out_conv_out_ui_pointer_plus_expr_FU_32_32_32_169_i2_fu_kruskalF_28880_30443_32_14));
  MUX_GATE #(.BITSIZE_in1(14), .BITSIZE_in2(14), .BITSIZE_out1(14)) MUX_63_PROXY_CTRLN_9_i0_1_0_0 (.out1(out_MUX_63_PROXY_CTRLN_9_i0_1_0_0), .sel(selector_MUX_63_PROXY_CTRLN_9_i0_1_0_0), .in1(out_conv_out_ui_pointer_plus_expr_FU_16_16_16_167_i2_fu_kruskalF_28880_30242_16_14), .in2(out_conv_out_ui_pointer_plus_expr_FU_16_16_16_167_i3_fu_kruskalF_28880_30343_16_14));
  MUX_GATE #(.BITSIZE_in1(14), .BITSIZE_in2(14), .BITSIZE_out1(14)) MUX_63_PROXY_CTRLN_9_i0_1_0_1 (.out1(out_MUX_63_PROXY_CTRLN_9_i0_1_0_1), .sel(selector_MUX_63_PROXY_CTRLN_9_i0_1_0_1), .in1(out_conv_out_ui_pointer_plus_expr_FU_16_16_16_167_i4_fu_kruskalF_28880_30417_16_14), .in2(out_MUX_63_PROXY_CTRLN_9_i0_1_0_0));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(14), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(14), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_6_i0 (.out1({null_out_signal_PROXY_CTRLN_6_i0_out1_1, null_out_signal_PROXY_CTRLN_6_i0_out1_0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288677_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_2886711_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2886715_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886719_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886723_0), .in1({8'b00000000, out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_17}), .in2({14'b00000000000000, out_conv_out_reg_5_reg_5_32_14}), .in3({4'b0000, out_conv_out_const_5_5_4}), .in4({1'b0, out_const_7}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_6_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_6_i0_STORE}), .proxy_out1(proxy_out1_28867));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(14), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(14), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_7_i0 (.out1({null_out_signal_PROXY_CTRLN_7_i0_out1_1, out_PROXY_CTRLN_7_i0_PROXY_CTRLN_7_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288688_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_2886812_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2886816_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886820_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886824_0), .in1({8'b00000000, out_MUX_50_PROXY_CTRLN_7_i0_0_0_1}), .in2({14'b00000000000000, out_conv_out_reg_4_reg_4_32_14}), .in3({4'b0000, out_conv_out_const_5_5_4}), .in4({1'b0, out_const_7}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_7_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_7_i0_STORE}), .proxy_out1(proxy_out1_28868));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(14), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(14), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_8_i0 (.out1({out_PROXY_CTRLN_8_i1_PROXY_CTRLN_8_i0, out_PROXY_CTRLN_8_i0_PROXY_CTRLN_8_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288699_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_2886913_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2886917_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886921_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886925_0), .in1({out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_5, out_iu_conv_conn_obj_16_IUdata_converter_FU_iu_conv_2}), .in2({out_MUX_59_PROXY_CTRLN_8_i1_1_0_0, out_MUX_55_PROXY_CTRLN_8_i0_1_1_0}), .in3({out_conv_out_const_5_5_4, out_conv_out_const_5_5_4}), .in4({out_const_7, out_const_7}), .sel_LOAD({fuselector_PROXY_CTRLN_8_i1_LOAD, fuselector_PROXY_CTRLN_8_i0_LOAD}), .sel_STORE({fuselector_PROXY_CTRLN_8_i1_STORE, fuselector_PROXY_CTRLN_8_i0_STORE}), .proxy_out1(proxy_out1_28869));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(14), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(14), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_9_i0 (.out1({null_out_signal_PROXY_CTRLN_9_i0_out1_1, out_PROXY_CTRLN_9_i0_PROXY_CTRLN_9_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_2887010_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_2887014_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2887018_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2887022_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2887026_0), .in1({8'b00000000, out_iu_conv_conn_obj_14_IUdata_converter_FU_iu_conv_1}), .in2({14'b00000000000000, out_MUX_63_PROXY_CTRLN_9_i0_1_0_1}), .in3({4'b0000, out_conv_out_const_5_5_4}), .in4({1'b0, out_const_7}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_9_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_9_i0_STORE}), .proxy_out1(proxy_out1_28870));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(14), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(14), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28859.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28859_28880), .address_space_rangesize(1024), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(14), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28859_0 (.out1({null_out_signal_array_28859_0_out1_1, out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_array_28859_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_0), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_0), .proxy_out1({null_out_signal_array_28859_0_proxy_out1_1, null_out_signal_array_28859_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_4}), .in2({14'b00000000000000, out_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0}), .in3({4'b0000, out_conv_out_const_5_5_4}), .in4({1'b0, out_const_7}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({14'b00000000000000, 14'b00000000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(14), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(14), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28861.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28861_28880), .address_space_rangesize(1024), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(14), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28861_0 (.out1({null_out_signal_array_28861_0_out1_1, out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_array_28861_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_1), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_1), .proxy_out1({null_out_signal_array_28861_0_proxy_out1_1, null_out_signal_array_28861_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0}), .in2({14'b00000000000000, out_conv_out_reg_7_reg_7_32_14}), .in3({4'b0000, out_conv_out_const_5_5_4}), .in4({1'b0, out_const_7}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({14'b00000000000000, 14'b00000000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(14), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(14), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28862.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28862_28880), .address_space_rangesize(1024), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(14), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28862_0 (.out1({null_out_signal_array_28862_0_out1_1, out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_array_28862_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_2), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_2), .proxy_out1({null_out_signal_array_28862_0_proxy_out1_1, null_out_signal_array_28862_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_vb_assign_conn_obj_13_ASSIGN_VECTOR_BOOL_FU_vb_assign_14}), .in2({14'b00000000000000, out_conv_out_reg_9_reg_9_32_14}), .in3({4'b0000, out_conv_out_const_5_5_4}), .in4({1'b0, out_const_7}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({14'b00000000000000, 14'b00000000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(14), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(14), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28864.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28864_28880), .address_space_rangesize(1024), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(14), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28864_0 (.out1({null_out_signal_array_28864_0_out1_1, out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_array_28864_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_3), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_3), .proxy_out1({null_out_signal_array_28864_0_proxy_out1_1, null_out_signal_array_28864_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_vb_assign_conn_obj_12_ASSIGN_VECTOR_BOOL_FU_vb_assign_13}), .in2({14'b00000000000000, out_conv_out_reg_8_reg_8_32_14}), .in3({4'b0000, out_conv_out_const_5_5_4}), .in4({1'b0, out_const_7}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({14'b00000000000000, 14'b00000000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(14), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(14), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28865.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28865_28880), .address_space_rangesize(1024), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(14), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28865_0 (.out1({null_out_signal_array_28865_0_out1_1, null_out_signal_array_28865_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_4), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_4), .proxy_out1({null_out_signal_array_28865_0_proxy_out1_1, null_out_signal_array_28865_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0}), .in2({14'b00000000000000, out_conv_out_reg_11_reg_11_32_14}), .in3({4'b0000, out_conv_out_const_5_5_4}), .in4({1'b0, out_const_7}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({14'b00000000000000, 14'b00000000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(14), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(14), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28866.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28866_28880), .address_space_rangesize(1024), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(14), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28866_0 (.out1({null_out_signal_array_28866_0_out1_1, null_out_signal_array_28866_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_5), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_5), .proxy_out1({null_out_signal_array_28866_0_proxy_out1_1, null_out_signal_array_28866_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1}), .in2({14'b00000000000000, out_conv_out_reg_10_reg_10_32_14}), .in3({4'b0000, out_conv_out_const_5_5_4}), .in4({1'b0, out_const_7}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({14'b00000000000000, 14'b00000000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(28), .PORTSIZE_in1(1), .BITSIZE_out1(28)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerMout_data_ram_size2_ (.out1(sig_out_bus_mergerMout_data_ram_size2_), .in1({sig_in_bus_mergerMout_data_ram_size2_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_oe_ram3_ (.out1(sig_out_bus_mergerMout_oe_ram3_), .in1({sig_in_bus_mergerMout_oe_ram3_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_we_ram4_ (.out1(sig_out_bus_mergerMout_we_ram4_), .in1({sig_in_bus_mergerMout_we_ram4_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(6), .BITSIZE_out1(2)) bus_mergerSout_DataRdy5_ (.out1(sig_out_bus_mergerSout_DataRdy5_), .in1({sig_in_bus_mergerSout_DataRdy5_5, sig_in_bus_mergerSout_DataRdy5_4, sig_in_bus_mergerSout_DataRdy5_3, sig_in_bus_mergerSout_DataRdy5_2, sig_in_bus_mergerSout_DataRdy5_1, sig_in_bus_mergerSout_DataRdy5_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(6), .BITSIZE_out1(16)) bus_mergerSout_Rdata_ram6_ (.out1(sig_out_bus_mergerSout_Rdata_ram6_), .in1({sig_in_bus_mergerSout_Rdata_ram6_5, sig_in_bus_mergerSout_Rdata_ram6_4, sig_in_bus_mergerSout_Rdata_ram6_3, sig_in_bus_mergerSout_Rdata_ram6_2, sig_in_bus_mergerSout_Rdata_ram6_1, sig_in_bus_mergerSout_Rdata_ram6_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288677_ (.out1(sig_out_bus_mergerproxy_in1_288677_), .in1({sig_in_bus_mergerproxy_in1_288677_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288688_ (.out1(sig_out_bus_mergerproxy_in1_288688_), .in1({sig_in_bus_mergerproxy_in1_288688_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288699_ (.out1(sig_out_bus_mergerproxy_in1_288699_), .in1({sig_in_bus_mergerproxy_in1_288699_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_2887010_ (.out1(sig_out_bus_mergerproxy_in1_2887010_), .in1({sig_in_bus_mergerproxy_in1_2887010_0}));
  bus_merger #(.BITSIZE_in1(28), .PORTSIZE_in1(1), .BITSIZE_out1(28)) bus_mergerproxy_in2_2886711_ (.out1(sig_out_bus_mergerproxy_in2_2886711_), .in1({sig_in_bus_mergerproxy_in2_2886711_0}));
  bus_merger #(.BITSIZE_in1(28), .PORTSIZE_in1(1), .BITSIZE_out1(28)) bus_mergerproxy_in2_2886812_ (.out1(sig_out_bus_mergerproxy_in2_2886812_), .in1({sig_in_bus_mergerproxy_in2_2886812_0}));
  bus_merger #(.BITSIZE_in1(28), .PORTSIZE_in1(1), .BITSIZE_out1(28)) bus_mergerproxy_in2_2886913_ (.out1(sig_out_bus_mergerproxy_in2_2886913_), .in1({sig_in_bus_mergerproxy_in2_2886913_0}));
  bus_merger #(.BITSIZE_in1(28), .PORTSIZE_in1(1), .BITSIZE_out1(28)) bus_mergerproxy_in2_2887014_ (.out1(sig_out_bus_mergerproxy_in2_2887014_), .in1({sig_in_bus_mergerproxy_in2_2887014_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_2886715_ (.out1(sig_out_bus_mergerproxy_in3_2886715_), .in1({sig_in_bus_mergerproxy_in3_2886715_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_2886816_ (.out1(sig_out_bus_mergerproxy_in3_2886816_), .in1({sig_in_bus_mergerproxy_in3_2886816_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_2886917_ (.out1(sig_out_bus_mergerproxy_in3_2886917_), .in1({sig_in_bus_mergerproxy_in3_2886917_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_2887018_ (.out1(sig_out_bus_mergerproxy_in3_2887018_), .in1({sig_in_bus_mergerproxy_in3_2887018_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2886719_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886719_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886719_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2886820_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886820_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886820_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2886921_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886921_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886921_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2887022_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2887022_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2887022_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886723_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886723_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886723_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886824_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886824_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886824_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886925_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886925_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886925_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2887026_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2887026_), .in1({sig_in_bus_mergerproxy_sel_STORE_2887026_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000000)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(5), .value(5'b11000)) const_11 (.out1(out_const_11));
  constant_value #(.BITSIZE_out1(5), .value(5'b11001)) const_12 (.out1(out_const_12));
  constant_value #(.BITSIZE_out1(3), .value(3'b111)) const_13 (.out1(out_const_13));
  constant_value #(.BITSIZE_out1(8), .value(8'b11111111)) const_14 (.out1(out_const_14));
  constant_value #(.BITSIZE_out1(12), .value(MEM_var_28868_28882)) const_15 (.out1(out_const_15));
  constant_value #(.BITSIZE_out1(14), .value(MEM_var_28869_28882)) const_16 (.out1(out_const_16));
  constant_value #(.BITSIZE_out1(13), .value(MEM_var_28870_28882)) const_17 (.out1(out_const_17));
  constant_value #(.BITSIZE_out1(13), .value(MEM_var_28859_28880)) const_18 (.out1(out_const_18));
  constant_value #(.BITSIZE_out1(13), .value(MEM_var_28861_28880)) const_19 (.out1(out_const_19));
  constant_value #(.BITSIZE_out1(8), .value(8'b00011000)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(13), .value(MEM_var_28862_28880)) const_20 (.out1(out_const_20));
  constant_value #(.BITSIZE_out1(14), .value(MEM_var_28864_28880)) const_21 (.out1(out_const_21));
  constant_value #(.BITSIZE_out1(14), .value(MEM_var_28865_28880)) const_22 (.out1(out_const_22));
  constant_value #(.BITSIZE_out1(8), .value(8'b00011001)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(2), .value(2'b01)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(8), .value(8'b01111111)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(11), .value(MEM_var_28867_28882)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(14), .value(MEM_var_28866_28880)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(14)) conv_in_port_a_32_14 (.out1(out_conv_in_port_a_32_14), .in1(in_port_a));
  IIdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(8)) conv_out_UIdata_converter_FU_42_i0_fu_kruskalF_28880_29853_I_6_I_8 (.out1(out_conv_out_UIdata_converter_FU_42_i0_fu_kruskalF_28880_29853_I_6_I_8), .in1(out_UIdata_converter_FU_42_i0_fu_kruskalF_28880_29853));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(14)) conv_out_UUdata_converter_FU_108_i0_fu_kruskalF_28880_29896_32_14 (.out1(out_conv_out_UUdata_converter_FU_108_i0_fu_kruskalF_28880_29896_32_14), .in1(out_UUdata_converter_FU_108_i0_fu_kruskalF_28880_29896));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(14)) conv_out_addr_expr_FU_12_i0_fu_kruskalF_28880_30227_32_14 (.out1(out_conv_out_addr_expr_FU_12_i0_fu_kruskalF_28880_30227_32_14), .in1(out_addr_expr_FU_12_i0_fu_kruskalF_28880_30227));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(32)) conv_out_const_15_12_32 (.out1(out_conv_out_const_15_12_32), .in1(out_const_15));
  UUdata_converter_FU #(.BITSIZE_in1(14), .BITSIZE_out1(32)) conv_out_const_16_14_32 (.out1(out_conv_out_const_16_14_32), .in1(out_const_16));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(32)) conv_out_const_17_13_32 (.out1(out_conv_out_const_17_13_32), .in1(out_const_17));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(32)) conv_out_const_18_13_32 (.out1(out_conv_out_const_18_13_32), .in1(out_const_18));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(32)) conv_out_const_19_13_32 (.out1(out_conv_out_const_19_13_32), .in1(out_const_19));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(32)) conv_out_const_20_13_32 (.out1(out_conv_out_const_20_13_32), .in1(out_const_20));
  UUdata_converter_FU #(.BITSIZE_in1(14), .BITSIZE_out1(32)) conv_out_const_21_14_32 (.out1(out_conv_out_const_21_14_32), .in1(out_const_21));
  UUdata_converter_FU #(.BITSIZE_in1(14), .BITSIZE_out1(32)) conv_out_const_22_14_32 (.out1(out_conv_out_const_22_14_32), .in1(out_const_22));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_5_5_4 (.out1(out_conv_out_const_5_5_4), .in1(out_const_5));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(32)) conv_out_const_8_11_32 (.out1(out_conv_out_const_8_11_32), .in1(out_const_8));
  UUdata_converter_FU #(.BITSIZE_in1(14), .BITSIZE_out1(32)) conv_out_const_9_14_32 (.out1(out_conv_out_const_9_14_32), .in1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(14)) conv_out_reg_10_reg_10_32_14 (.out1(out_conv_out_reg_10_reg_10_32_14), .in1(out_reg_10_reg_10));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(14)) conv_out_reg_11_reg_11_32_14 (.out1(out_conv_out_reg_11_reg_11_32_14), .in1(out_reg_11_reg_11));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(14)) conv_out_reg_2_reg_2_32_14 (.out1(out_conv_out_reg_2_reg_2_32_14), .in1(out_reg_2_reg_2));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(14)) conv_out_reg_40_reg_40_32_14 (.out1(out_conv_out_reg_40_reg_40_32_14), .in1(out_reg_40_reg_40));
  UUdata_converter_FU #(.BITSIZE_in1(16), .BITSIZE_out1(14)) conv_out_reg_44_reg_44_16_14 (.out1(out_conv_out_reg_44_reg_44_16_14), .in1(out_reg_44_reg_44));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(14)) conv_out_reg_49_reg_49_32_14 (.out1(out_conv_out_reg_49_reg_49_32_14), .in1(out_reg_49_reg_49));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(14)) conv_out_reg_4_reg_4_32_14 (.out1(out_conv_out_reg_4_reg_4_32_14), .in1(out_reg_4_reg_4));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(14)) conv_out_reg_5_reg_5_32_14 (.out1(out_conv_out_reg_5_reg_5_32_14), .in1(out_reg_5_reg_5));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(14)) conv_out_reg_7_reg_7_32_14 (.out1(out_conv_out_reg_7_reg_7_32_14), .in1(out_reg_7_reg_7));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(14)) conv_out_reg_8_reg_8_32_14 (.out1(out_conv_out_reg_8_reg_8_32_14), .in1(out_reg_8_reg_8));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(14)) conv_out_reg_9_reg_9_32_14 (.out1(out_conv_out_reg_9_reg_9_32_14), .in1(out_reg_9_reg_9));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(5)) conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_7_1_5 (.out1(out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_7_1_5), .in1(out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_7));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_8_5_8 (.out1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_8_5_8), .in1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_8));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(5)) conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_9_1_5 (.out1(out_conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_9_1_5), .in1(out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_9));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(5)) conv_out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_10_1_5 (.out1(out_conv_out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_10_1_5), .in1(out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_10));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_11_5_8 (.out1(out_conv_out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_11_5_8), .in1(out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_11));
  UUdata_converter_FU #(.BITSIZE_in1(16), .BITSIZE_out1(14)) conv_out_ui_pointer_plus_expr_FU_16_16_16_167_i2_fu_kruskalF_28880_30242_16_14 (.out1(out_conv_out_ui_pointer_plus_expr_FU_16_16_16_167_i2_fu_kruskalF_28880_30242_16_14), .in1(out_ui_pointer_plus_expr_FU_16_16_16_167_i2_fu_kruskalF_28880_30242));
  UUdata_converter_FU #(.BITSIZE_in1(16), .BITSIZE_out1(14)) conv_out_ui_pointer_plus_expr_FU_16_16_16_167_i3_fu_kruskalF_28880_30343_16_14 (.out1(out_conv_out_ui_pointer_plus_expr_FU_16_16_16_167_i3_fu_kruskalF_28880_30343_16_14), .in1(out_ui_pointer_plus_expr_FU_16_16_16_167_i3_fu_kruskalF_28880_30343));
  UUdata_converter_FU #(.BITSIZE_in1(16), .BITSIZE_out1(14)) conv_out_ui_pointer_plus_expr_FU_16_16_16_167_i4_fu_kruskalF_28880_30417_16_14 (.out1(out_conv_out_ui_pointer_plus_expr_FU_16_16_16_167_i4_fu_kruskalF_28880_30417_16_14), .in1(out_ui_pointer_plus_expr_FU_16_16_16_167_i4_fu_kruskalF_28880_30417));
  UUdata_converter_FU #(.BITSIZE_in1(16), .BITSIZE_out1(14)) conv_out_ui_pointer_plus_expr_FU_16_16_16_167_i7_fu_kruskalF_28880_30597_16_14 (.out1(out_conv_out_ui_pointer_plus_expr_FU_16_16_16_167_i7_fu_kruskalF_28880_30597_16_14), .in1(out_ui_pointer_plus_expr_FU_16_16_16_167_i7_fu_kruskalF_28880_30597));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(14)) conv_out_ui_pointer_plus_expr_FU_32_32_32_169_i0_fu_kruskalF_28880_30310_32_14 (.out1(out_conv_out_ui_pointer_plus_expr_FU_32_32_32_169_i0_fu_kruskalF_28880_30310_32_14), .in1(out_ui_pointer_plus_expr_FU_32_32_32_169_i0_fu_kruskalF_28880_30310));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(14)) conv_out_ui_pointer_plus_expr_FU_32_32_32_169_i1_fu_kruskalF_28880_30430_32_14 (.out1(out_conv_out_ui_pointer_plus_expr_FU_32_32_32_169_i1_fu_kruskalF_28880_30430_32_14), .in1(out_ui_pointer_plus_expr_FU_32_32_32_169_i1_fu_kruskalF_28880_30430));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(14)) conv_out_ui_pointer_plus_expr_FU_32_32_32_169_i2_fu_kruskalF_28880_30443_32_14 (.out1(out_conv_out_ui_pointer_plus_expr_FU_32_32_32_169_i2_fu_kruskalF_28880_30443_32_14), .in1(out_ui_pointer_plus_expr_FU_32_32_32_169_i2_fu_kruskalF_28880_30443));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(5)) fu_kruskalF_28880_29787 (.out1(out_UUdata_converter_FU_30_i0_fu_kruskalF_28880_29787), .in1(out_reg_15_reg_15));
  UIdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(6)) fu_kruskalF_28880_29788 (.out1(out_UIdata_converter_FU_31_i0_fu_kruskalF_28880_29788), .in1(out_reg_15_reg_15));
  cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29794 (.out1(out_cond_expr_FU_8_8_8_8_131_i0_fu_kruskalF_28880_29794), .in1(out_ne_expr_FU_8_0_8_136_i1_fu_kruskalF_28880_30245), .in2(out_reg_18_reg_18), .in3(out_reg_13_reg_13));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_kruskalF_28880_29805 (.out1(out_UIdata_converter_FU_36_i0_fu_kruskalF_28880_29805), .in1(out_reg_19_reg_19));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_kruskalF_28880_29813 (.out1(out_ui_plus_expr_FU_8_0_8_163_i0_fu_kruskalF_28880_29813), .in1(out_reg_19_reg_19), .in2(out_const_7));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(8)) fu_kruskalF_28880_29815 (.out1(out_plus_expr_FU_8_0_8_138_i0_fu_kruskalF_28880_29815), .in1(out_reg_13_reg_13), .in2(out_const_4));
  cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29824 (.out1(out_cond_expr_FU_8_8_8_8_131_i1_fu_kruskalF_28880_29824), .in1(out_ne_expr_FU_8_0_8_136_i1_fu_kruskalF_28880_30245), .in2(out_reg_18_reg_18), .in3(out_reg_14_reg_14));
  ui_plus_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(1), .BITSIZE_out1(5)) fu_kruskalF_28880_29833 (.out1(out_ui_plus_expr_FU_8_0_8_164_i0_fu_kruskalF_28880_29833), .in1(out_reg_15_reg_15), .in2(out_const_7));
  UIdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(6)) fu_kruskalF_28880_29853 (.out1(out_UIdata_converter_FU_42_i0_fu_kruskalF_28880_29853), .in1(out_reg_22_reg_22));
  ui_plus_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(1), .BITSIZE_out1(5)) fu_kruskalF_28880_29855 (.out1(out_ui_plus_expr_FU_8_0_8_164_i1_fu_kruskalF_28880_29855), .in1(out_reg_22_reg_22), .in2(out_const_7));
  read_cond_FU #(.BITSIZE_in1(1)) fu_kruskalF_28880_29856 (.out1(out_read_cond_FU_43_i0_fu_kruskalF_28880_29856), .in1(out_ui_ne_expr_FU_8_0_8_159_i1_fu_kruskalF_28880_30721));
  read_cond_FU #(.BITSIZE_in1(1)) fu_kruskalF_28880_29870 (.out1(out_read_cond_FU_44_i0_fu_kruskalF_28880_29870), .in1(out_reg_23_reg_23));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_29896 (.out1(out_UUdata_converter_FU_108_i0_fu_kruskalF_28880_29896), .in1(out_reg_50_reg_50));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_29904 (.out1(out_UUdata_converter_FU_25_i0_fu_kruskalF_28880_29904), .in1(out_addr_expr_FU_17_i0_fu_kruskalF_28880_30307));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(32)) fu_kruskalF_28880_29907 (.out1(out_ui_plus_expr_FU_32_0_32_162_i0_fu_kruskalF_28880_29907), .in1(out_reg_50_reg_50), .in2(out_const_7));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_kruskalF_28880_29912 (.out1(out_UIdata_converter_FU_89_i0_fu_kruskalF_28880_29912), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_array_28864_0));
  ui_cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29929 (.out1(out_ui_cond_expr_FU_8_8_8_8_151_i0_fu_kruskalF_28880_29929), .in1(out_ui_bit_and_expr_FU_1_1_1_143_i0_fu_kruskalF_28880_29934), .in2(out_reg_26_reg_26), .in3(out_reg_35_reg_35));
  ui_bit_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_kruskalF_28880_29934 (.out1(out_ui_bit_and_expr_FU_1_1_1_143_i0_fu_kruskalF_28880_29934), .in1(out_le_expr_FU_8_8_8_134_i0_fu_kruskalF_28880_29938), .in2(out_ne_expr_FU_8_0_8_136_i0_fu_kruskalF_28880_30033));
  le_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_kruskalF_28880_29938 (.out1(out_le_expr_FU_8_8_8_134_i0_fu_kruskalF_28880_29938), .in1(out_PROXY_CTRLN_9_i0_PROXY_CTRLN_9_i0), .in2(out_reg_27_reg_27));
  cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29960 (.out1(out_cond_expr_FU_8_8_8_8_131_i2_fu_kruskalF_28880_29960), .in1(out_ui_bit_and_expr_FU_1_1_1_143_i0_fu_kruskalF_28880_29934), .in2(out_PROXY_CTRLN_9_i0_PROXY_CTRLN_9_i0), .in3(out_reg_36_reg_36));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(14), .BITSIZE_in2(13), .BITSIZE_out1(15), .LSB_PARAMETER(0)) fu_kruskalF_28880_29973 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_167_i0_fu_kruskalF_28880_29973), .in1(out_conv_in_port_a_32_14), .in2(out_ui_bit_ior_concat_expr_FU_150_i1_fu_kruskalF_28880_30581));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29986 (.out1(out_UUdata_converter_FU_115_i0_fu_kruskalF_28880_29986), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_array_28862_0));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_kruskalF_28880_29991 (.out1(out_UIdata_converter_FU_116_i0_fu_kruskalF_28880_29991), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_array_28864_0));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(14), .BITSIZE_in2(13), .BITSIZE_out1(15), .LSB_PARAMETER(0)) fu_kruskalF_28880_30000 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_167_i1_fu_kruskalF_28880_30000), .in1(out_conv_in_port_a_32_14), .in2(out_ui_bit_ior_concat_expr_FU_150_i0_fu_kruskalF_28880_30552));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_kruskalF_28880_30006 (.out1(out_UUdata_converter_FU_94_i0_fu_kruskalF_28880_30006), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_array_28864_0));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_kruskalF_28880_30008 (.out1(out_UIdata_converter_FU_90_i0_fu_kruskalF_28880_30008), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_array_28862_0));
  UIdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(6)) fu_kruskalF_28880_30018 (.out1(out_UIdata_converter_FU_69_i0_fu_kruskalF_28880_30018), .in1(out_reg_28_reg_28));
  ui_plus_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(1), .BITSIZE_out1(5)) fu_kruskalF_28880_30025 (.out1(out_ui_plus_expr_FU_8_0_8_164_i2_fu_kruskalF_28880_30025), .in1(out_reg_28_reg_28), .in2(out_const_7));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_kruskalF_28880_30027 (.out1(out_UIdata_converter_FU_85_i0_fu_kruskalF_28880_30027), .in1(out_reg_26_reg_26));
  cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_kruskalF_28880_30031 (.out1(out_cond_expr_FU_8_8_8_8_131_i3_fu_kruskalF_28880_30031), .in1(out_ui_bit_and_expr_FU_1_1_1_143_i0_fu_kruskalF_28880_29934), .in2(out_PROXY_CTRLN_9_i0_PROXY_CTRLN_9_i0), .in3(out_reg_27_reg_27));
  ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_kruskalF_28880_30033 (.out1(out_ne_expr_FU_8_0_8_136_i0_fu_kruskalF_28880_30033), .in1(out_PROXY_CTRLN_9_i0_PROXY_CTRLN_9_i0), .in2(out_const_10));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(5)) fu_kruskalF_28880_30040 (.out1(out_UUdata_converter_FU_68_i0_fu_kruskalF_28880_30040), .in1(out_reg_28_reg_28));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_kruskalF_28880_30042 (.out1(out_ui_plus_expr_FU_8_0_8_163_i1_fu_kruskalF_28880_30042), .in1(out_reg_26_reg_26), .in2(out_const_7));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_kruskalF_28880_30051 (.out1(out_IUdata_converter_FU_95_i0_fu_kruskalF_28880_30051), .in1(out_PROXY_CTRLN_8_i1_PROXY_CTRLN_8_i0));
  ui_cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(5), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_kruskalF_28880_30064 (.out1(out_ui_cond_expr_FU_8_8_8_8_151_i1_fu_kruskalF_28880_30064), .in1(out_ui_bit_and_expr_FU_1_1_1_143_i0_fu_kruskalF_28880_29934), .in2(out_reg_29_reg_29), .in3(out_reg_37_reg_37));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_kruskalF_28880_30074 (.out1(out_ui_plus_expr_FU_8_0_8_165_i0_fu_kruskalF_28880_30074), .in1(out_PROXY_CTRLN_7_i0_PROXY_CTRLN_7_i0), .in2(out_const_7));
  read_cond_FU #(.BITSIZE_in1(1)) fu_kruskalF_28880_30083 (.out1(out_read_cond_FU_97_i0_fu_kruskalF_28880_30083), .in1(out_ne_expr_FU_8_8_8_137_i0_fu_kruskalF_28880_30729));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_kruskalF_28880_30087 (.out1(out_UIdata_converter_FU_96_i0_fu_kruskalF_28880_30087), .in1(out_IUdata_converter_FU_95_i0_fu_kruskalF_28880_30051));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_30088 (.out1(out_UUdata_converter_FU_26_i0_fu_kruskalF_28880_30088), .in1(out_ui_pointer_plus_expr_FU_32_0_32_168_i0_fu_kruskalF_28880_30505));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_kruskalF_28880_30097 (.out1(out_IIdata_converter_FU_109_i0_fu_kruskalF_28880_30097), .in1(out_PROXY_CTRLN_8_i0_PROXY_CTRLN_8_i0));
  read_cond_FU #(.BITSIZE_in1(1)) fu_kruskalF_28880_30098 (.out1(out_read_cond_FU_110_i0_fu_kruskalF_28880_30098), .in1(out_eq_expr_FU_16_16_16_132_i0_fu_kruskalF_28880_30731));
  read_cond_FU #(.BITSIZE_in1(1)) fu_kruskalF_28880_30104 (.out1(out_read_cond_FU_112_i0_fu_kruskalF_28880_30104), .in1(out_ui_ne_expr_FU_32_32_32_157_i0_fu_kruskalF_28880_30733));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_kruskalF_28880_30106 (.out1(out_UIdata_converter_FU_127_i0_fu_kruskalF_28880_30106), .in1(out_ui_plus_expr_FU_8_0_8_165_i0_fu_kruskalF_28880_30074));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_kruskalF_28880_30108 (.out1(out_IIdata_converter_FU_128_i0_fu_kruskalF_28880_30108), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_array_28859_0));
  read_cond_FU #(.BITSIZE_in1(1)) fu_kruskalF_28880_30109 (.out1(out_read_cond_FU_129_i0_fu_kruskalF_28880_30109), .in1(out_lt_expr_FU_16_16_16_135_i0_fu_kruskalF_28880_30735));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_30227 (.out1(out_addr_expr_FU_12_i0_fu_kruskalF_28880_30227), .in1(out_conv_out_const_18_13_32));
  UUdata_converter_FU #(.BITSIZE_in1(15), .BITSIZE_out1(15)) fu_kruskalF_28880_30232 (.out1(out_UUdata_converter_FU_37_i0_fu_kruskalF_28880_30232), .in1(out_ui_pointer_plus_expr_FU_16_16_16_167_i8_ui_pointer_plus_expr_FU_16_16_16_167_i8));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_kruskalF_28880_30235 (.out1(out_IUdata_converter_FU_38_i0_fu_kruskalF_28880_30235), .in1(out_UIdata_converter_FU_36_i0_fu_kruskalF_28880_29805));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(15), .BITSIZE_in2(8), .BITSIZE_out1(16), .LSB_PARAMETER(0)) fu_kruskalF_28880_30242 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_167_i2_fu_kruskalF_28880_30242), .in1(out_UUdata_converter_FU_37_i0_fu_kruskalF_28880_30232), .in2(out_IUdata_converter_FU_38_i0_fu_kruskalF_28880_30235));
  ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_kruskalF_28880_30245 (.out1(out_ne_expr_FU_8_0_8_136_i1_fu_kruskalF_28880_30245), .in1(out_PROXY_CTRLN_9_i0_PROXY_CTRLN_9_i0), .in2(out_const_10));
  UUdata_converter_FU #(.BITSIZE_in1(14), .BITSIZE_out1(14)) fu_kruskalF_28880_30252 (.out1(out_UUdata_converter_FU_14_i0_fu_kruskalF_28880_30252), .in1(out_addr_expr_FU_13_i0_fu_kruskalF_28880_30273));
  IUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(5)) fu_kruskalF_28880_30255 (.out1(out_IUdata_converter_FU_32_i0_fu_kruskalF_28880_30255), .in1(out_UIdata_converter_FU_31_i0_fu_kruskalF_28880_29788));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(14)) fu_kruskalF_28880_30273 (.out1(out_addr_expr_FU_13_i0_fu_kruskalF_28880_30273), .in1(out_conv_out_const_17_13_32));
  ui_lshift_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(1), .BITSIZE_out1(6), .PRECISION(32)) fu_kruskalF_28880_30278 (.out1(out_ui_lshift_expr_FU_8_0_8_156_i0_fu_kruskalF_28880_30278), .in1(out_IUdata_converter_FU_32_i0_fu_kruskalF_28880_30255), .in2(out_const_7));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(7), .OFFSET_PARAMETER(1)) fu_kruskalF_28880_30281 (.out1(out_ui_bit_ior_concat_expr_FU_146_i0_fu_kruskalF_28880_30281), .in1(out_ui_lshift_expr_FU_8_0_8_156_i2_fu_kruskalF_28880_30769), .in2(out_ui_bit_and_expr_FU_1_0_1_141_i0_fu_kruskalF_28880_30773), .in3(out_const_7));
  ui_lshift_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(2), .BITSIZE_out1(10), .PRECISION(32)) fu_kruskalF_28880_30285 (.out1(out_ui_lshift_expr_FU_16_0_16_152_i0_fu_kruskalF_28880_30285), .in1(out_ui_bit_ior_concat_expr_FU_146_i0_fu_kruskalF_28880_30281), .in2(out_const_10));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(3), .BITSIZE_in3(2), .BITSIZE_out1(11), .OFFSET_PARAMETER(3)) fu_kruskalF_28880_30288 (.out1(out_ui_bit_ior_concat_expr_FU_147_i0_fu_kruskalF_28880_30288), .in1(out_ui_lshift_expr_FU_16_0_16_152_i3_fu_kruskalF_28880_30786), .in2(out_ui_bit_and_expr_FU_8_0_8_144_i0_fu_kruskalF_28880_30791), .in3(out_const_10));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_30291 (.out1(out_addr_expr_FU_15_i0_fu_kruskalF_28880_30291), .in1(out_conv_out_const_15_12_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_30299 (.out1(out_addr_expr_FU_16_i0_fu_kruskalF_28880_30299), .in1(out_conv_out_const_8_11_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_30307 (.out1(out_addr_expr_FU_17_i0_fu_kruskalF_28880_30307), .in1(out_conv_out_const_16_14_32));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(5), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_kruskalF_28880_30310 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_169_i0_fu_kruskalF_28880_30310), .in1(out_reg_6_reg_6), .in2(out_reg_22_reg_22));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_30318 (.out1(out_addr_expr_FU_18_i0_fu_kruskalF_28880_30318), .in1(out_conv_out_const_19_13_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_30326 (.out1(out_addr_expr_FU_19_i0_fu_kruskalF_28880_30326), .in1(out_conv_out_const_21_14_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_30330 (.out1(out_addr_expr_FU_20_i0_fu_kruskalF_28880_30330), .in1(out_conv_out_const_20_13_32));
  UUdata_converter_FU #(.BITSIZE_in1(15), .BITSIZE_out1(15)) fu_kruskalF_28880_30334 (.out1(out_UUdata_converter_FU_86_i0_fu_kruskalF_28880_30334), .in1(out_ui_pointer_plus_expr_FU_16_16_16_167_i9_fu_kruskalF_28880_30356));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_kruskalF_28880_30337 (.out1(out_IUdata_converter_FU_87_i0_fu_kruskalF_28880_30337), .in1(out_UIdata_converter_FU_85_i0_fu_kruskalF_28880_30027));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(15), .BITSIZE_in2(8), .BITSIZE_out1(16), .LSB_PARAMETER(0)) fu_kruskalF_28880_30343 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_167_i3_fu_kruskalF_28880_30343), .in1(out_UUdata_converter_FU_86_i0_fu_kruskalF_28880_30334), .in2(out_IUdata_converter_FU_87_i0_fu_kruskalF_28880_30337));
  IUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(5)) fu_kruskalF_28880_30350 (.out1(out_IUdata_converter_FU_70_i0_fu_kruskalF_28880_30350), .in1(out_UIdata_converter_FU_69_i0_fu_kruskalF_28880_30018));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(14), .BITSIZE_in2(11), .BITSIZE_out1(15), .LSB_PARAMETER(0)) fu_kruskalF_28880_30356 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_167_i9_fu_kruskalF_28880_30356), .in1(out_reg_3_reg_3), .in2(out_reg_30_reg_30));
  ui_lshift_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(1), .BITSIZE_out1(6), .PRECISION(32)) fu_kruskalF_28880_30368 (.out1(out_ui_lshift_expr_FU_8_0_8_156_i1_fu_kruskalF_28880_30368), .in1(out_IUdata_converter_FU_70_i0_fu_kruskalF_28880_30350), .in2(out_const_7));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(7), .OFFSET_PARAMETER(1)) fu_kruskalF_28880_30371 (.out1(out_ui_bit_ior_concat_expr_FU_146_i1_fu_kruskalF_28880_30371), .in1(out_ui_lshift_expr_FU_8_0_8_156_i3_fu_kruskalF_28880_30803), .in2(out_ui_bit_and_expr_FU_1_0_1_141_i1_fu_kruskalF_28880_30806), .in3(out_const_7));
  ui_lshift_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(2), .BITSIZE_out1(10), .PRECISION(32)) fu_kruskalF_28880_30374 (.out1(out_ui_lshift_expr_FU_16_0_16_152_i1_fu_kruskalF_28880_30374), .in1(out_ui_bit_ior_concat_expr_FU_146_i1_fu_kruskalF_28880_30371), .in2(out_const_10));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(3), .BITSIZE_in3(2), .BITSIZE_out1(11), .OFFSET_PARAMETER(3)) fu_kruskalF_28880_30377 (.out1(out_ui_bit_ior_concat_expr_FU_147_i1_fu_kruskalF_28880_30377), .in1(out_ui_lshift_expr_FU_16_0_16_152_i4_fu_kruskalF_28880_30818), .in2(out_ui_bit_and_expr_FU_8_0_8_144_i1_fu_kruskalF_28880_30821), .in3(out_const_10));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_30380 (.out1(out_addr_expr_FU_21_i0_fu_kruskalF_28880_30380), .in1(out_conv_out_const_9_14_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_30396 (.out1(out_addr_expr_FU_22_i0_fu_kruskalF_28880_30396), .in1(out_conv_out_const_22_14_32));
  UUdata_converter_FU #(.BITSIZE_in1(15), .BITSIZE_out1(15)) fu_kruskalF_28880_30408 (.out1(out_UUdata_converter_FU_92_i0_fu_kruskalF_28880_30408), .in1(out_ui_pointer_plus_expr_FU_16_16_16_167_i5_fu_kruskalF_28880_30456));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_kruskalF_28880_30411 (.out1(out_IUdata_converter_FU_93_i0_fu_kruskalF_28880_30411), .in1(out_UIdata_converter_FU_90_i0_fu_kruskalF_28880_30008));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(15), .BITSIZE_in2(8), .BITSIZE_out1(16), .LSB_PARAMETER(0)) fu_kruskalF_28880_30417 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_167_i4_fu_kruskalF_28880_30417), .in1(out_reg_38_reg_38), .in2(out_reg_39_reg_39));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_30421 (.out1(out_UUdata_converter_FU_24_i0_fu_kruskalF_28880_30421), .in1(out_addr_expr_FU_23_i0_fu_kruskalF_28880_30466));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_kruskalF_28880_30430 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_169_i1_fu_kruskalF_28880_30430), .in1(out_reg_12_reg_12), .in2(out_IUdata_converter_FU_91_i0_fu_kruskalF_28880_30450));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_kruskalF_28880_30443 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_169_i2_fu_kruskalF_28880_30443), .in1(out_reg_12_reg_12), .in2(out_IUdata_converter_FU_93_i0_fu_kruskalF_28880_30411));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_kruskalF_28880_30450 (.out1(out_IUdata_converter_FU_91_i0_fu_kruskalF_28880_30450), .in1(out_UIdata_converter_FU_89_i0_fu_kruskalF_28880_29912));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(14), .BITSIZE_in2(14), .BITSIZE_out1(15), .LSB_PARAMETER(0)) fu_kruskalF_28880_30456 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_167_i5_fu_kruskalF_28880_30456), .in1(out_reg_3_reg_3), .in2(out_ui_bit_ior_concat_expr_FU_147_i2_fu_kruskalF_28880_30487));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_30466 (.out1(out_addr_expr_FU_23_i0_fu_kruskalF_28880_30466), .in1(out_conv_out_const_16_14_32));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(9), .PRECISION(32)) fu_kruskalF_28880_30478 (.out1(out_ui_lshift_expr_FU_16_0_16_153_i0_fu_kruskalF_28880_30478), .in1(out_IUdata_converter_FU_91_i0_fu_kruskalF_28880_30450), .in2(out_const_7));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(10), .OFFSET_PARAMETER(1)) fu_kruskalF_28880_30481 (.out1(out_ui_bit_ior_concat_expr_FU_148_i0_fu_kruskalF_28880_30481), .in1(out_ui_lshift_expr_FU_16_0_16_153_i1_fu_kruskalF_28880_30834), .in2(out_ui_bit_and_expr_FU_1_0_1_141_i2_fu_kruskalF_28880_30838), .in3(out_const_7));
  ui_lshift_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(2), .BITSIZE_out1(13), .PRECISION(32)) fu_kruskalF_28880_30484 (.out1(out_ui_lshift_expr_FU_16_0_16_152_i2_fu_kruskalF_28880_30484), .in1(out_ui_bit_ior_concat_expr_FU_148_i0_fu_kruskalF_28880_30481), .in2(out_const_10));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(14), .BITSIZE_in2(3), .BITSIZE_in3(2), .BITSIZE_out1(14), .OFFSET_PARAMETER(3)) fu_kruskalF_28880_30487 (.out1(out_ui_bit_ior_concat_expr_FU_147_i2_fu_kruskalF_28880_30487), .in1(out_ui_lshift_expr_FU_16_0_16_152_i5_fu_kruskalF_28880_30850), .in2(out_ui_bit_and_expr_FU_8_0_8_144_i2_fu_kruskalF_28880_30854), .in3(out_const_10));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(5), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_kruskalF_28880_30505 (.out1(out_ui_pointer_plus_expr_FU_32_0_32_168_i0_fu_kruskalF_28880_30505), .in1(out_addr_expr_FU_17_i0_fu_kruskalF_28880_30307), .in2(out_const_12));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(9), .PRECISION(32)) fu_kruskalF_28880_30542 (.out1(out_ui_lshift_expr_FU_16_0_16_154_i0_fu_kruskalF_28880_30542), .in1(out_UUdata_converter_FU_94_i0_fu_kruskalF_28880_30006), .in2(out_const_7));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(10), .OFFSET_PARAMETER(1)) fu_kruskalF_28880_30545 (.out1(out_ui_bit_ior_concat_expr_FU_149_i0_fu_kruskalF_28880_30545), .in1(out_ui_lshift_expr_FU_16_0_16_154_i2_fu_kruskalF_28880_30869), .in2(out_ui_bit_and_expr_FU_1_0_1_142_i0_fu_kruskalF_28880_30873), .in3(out_const_7));
  ui_lshift_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(2), .BITSIZE_out1(13), .PRECISION(32)) fu_kruskalF_28880_30549 (.out1(out_ui_lshift_expr_FU_16_0_16_155_i0_fu_kruskalF_28880_30549), .in1(out_ui_bit_ior_concat_expr_FU_149_i0_fu_kruskalF_28880_30545), .in2(out_const_10));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(3), .BITSIZE_in3(2), .BITSIZE_out1(13), .OFFSET_PARAMETER(3)) fu_kruskalF_28880_30552 (.out1(out_ui_bit_ior_concat_expr_FU_150_i0_fu_kruskalF_28880_30552), .in1(out_ui_lshift_expr_FU_16_0_16_155_i2_fu_kruskalF_28880_30886), .in2(out_reg_43_reg_43), .in3(out_const_10));
  UUdata_converter_FU #(.BITSIZE_in1(15), .BITSIZE_out1(15)) fu_kruskalF_28880_30555 (.out1(out_UUdata_converter_FU_114_i0_fu_kruskalF_28880_30555), .in1(out_ui_pointer_plus_expr_FU_16_16_16_167_i1_fu_kruskalF_28880_30000));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(15), .BITSIZE_in2(8), .BITSIZE_out1(16), .LSB_PARAMETER(0)) fu_kruskalF_28880_30564 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_167_i6_fu_kruskalF_28880_30564), .in1(out_UUdata_converter_FU_114_i0_fu_kruskalF_28880_30555), .in2(out_reg_39_reg_39));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(9), .PRECISION(32)) fu_kruskalF_28880_30572 (.out1(out_ui_lshift_expr_FU_16_0_16_154_i1_fu_kruskalF_28880_30572), .in1(out_UUdata_converter_FU_115_i0_fu_kruskalF_28880_29986), .in2(out_const_7));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(10), .OFFSET_PARAMETER(1)) fu_kruskalF_28880_30575 (.out1(out_ui_bit_ior_concat_expr_FU_149_i1_fu_kruskalF_28880_30575), .in1(out_ui_lshift_expr_FU_16_0_16_154_i3_fu_kruskalF_28880_30904), .in2(out_ui_bit_and_expr_FU_1_0_1_142_i1_fu_kruskalF_28880_30907), .in3(out_const_7));
  ui_lshift_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(2), .BITSIZE_out1(13), .PRECISION(32)) fu_kruskalF_28880_30578 (.out1(out_ui_lshift_expr_FU_16_0_16_155_i1_fu_kruskalF_28880_30578), .in1(out_ui_bit_ior_concat_expr_FU_149_i1_fu_kruskalF_28880_30575), .in2(out_const_10));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(3), .BITSIZE_in3(2), .BITSIZE_out1(13), .OFFSET_PARAMETER(3)) fu_kruskalF_28880_30581 (.out1(out_ui_bit_ior_concat_expr_FU_150_i1_fu_kruskalF_28880_30581), .in1(out_ui_lshift_expr_FU_16_0_16_155_i3_fu_kruskalF_28880_30919), .in2(out_ui_bit_and_expr_FU_8_0_8_145_i1_fu_kruskalF_28880_30922), .in3(out_const_10));
  UUdata_converter_FU #(.BITSIZE_in1(15), .BITSIZE_out1(15)) fu_kruskalF_28880_30588 (.out1(out_UUdata_converter_FU_117_i0_fu_kruskalF_28880_30588), .in1(out_ui_pointer_plus_expr_FU_16_16_16_167_i0_fu_kruskalF_28880_29973));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_kruskalF_28880_30591 (.out1(out_IUdata_converter_FU_118_i0_fu_kruskalF_28880_30591), .in1(out_UIdata_converter_FU_116_i0_fu_kruskalF_28880_29991));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(15), .BITSIZE_in2(8), .BITSIZE_out1(16), .LSB_PARAMETER(0)) fu_kruskalF_28880_30597 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_167_i7_fu_kruskalF_28880_30597), .in1(out_reg_45_reg_45), .in2(out_reg_46_reg_46));
  ui_ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(5), .BITSIZE_out1(1)) fu_kruskalF_28880_30717 (.out1(out_ui_ne_expr_FU_8_0_8_158_i0_fu_kruskalF_28880_30717), .in1(out_ui_plus_expr_FU_8_0_8_163_i0_fu_kruskalF_28880_29813), .in2(out_const_12));
  ui_ne_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(1)) fu_kruskalF_28880_30719 (.out1(out_ui_ne_expr_FU_8_0_8_159_i0_fu_kruskalF_28880_30719), .in1(out_ui_plus_expr_FU_8_0_8_164_i0_fu_kruskalF_28880_29833), .in2(out_const_12));
  ui_ne_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(1)) fu_kruskalF_28880_30721 (.out1(out_ui_ne_expr_FU_8_0_8_159_i1_fu_kruskalF_28880_30721), .in1(out_ui_plus_expr_FU_8_0_8_164_i1_fu_kruskalF_28880_29855), .in2(out_const_12));
  gt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_kruskalF_28880_30723 (.out1(out_gt_expr_FU_8_0_8_133_i0_fu_kruskalF_28880_30723), .in1(out_reg_13_reg_13), .in2(out_const_0));
  ui_ne_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(1)) fu_kruskalF_28880_30725 (.out1(out_ui_ne_expr_FU_8_0_8_160_i0_fu_kruskalF_28880_30725), .in1(out_ui_plus_expr_FU_8_0_8_164_i2_fu_kruskalF_28880_30025), .in2(out_const_11));
  ui_ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(5), .BITSIZE_out1(1)) fu_kruskalF_28880_30727 (.out1(out_ui_ne_expr_FU_8_0_8_158_i1_fu_kruskalF_28880_30727), .in1(out_ui_plus_expr_FU_8_0_8_163_i1_fu_kruskalF_28880_30042), .in2(out_const_12));
  ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_kruskalF_28880_30729 (.out1(out_ne_expr_FU_8_8_8_137_i0_fu_kruskalF_28880_30729), .in1(out_PROXY_CTRLN_8_i0_PROXY_CTRLN_8_i0), .in2(out_PROXY_CTRLN_8_i1_PROXY_CTRLN_8_i0));
  eq_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_out1(1)) fu_kruskalF_28880_30731 (.out1(out_eq_expr_FU_16_16_16_132_i0_fu_kruskalF_28880_30731), .in1(out_IIdata_converter_FU_109_i0_fu_kruskalF_28880_30097), .in2(out_reg_48_reg_48));
  ui_ne_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(1)) fu_kruskalF_28880_30733 (.out1(out_ui_ne_expr_FU_32_32_32_157_i0_fu_kruskalF_28880_30733), .in1(out_reg_50_reg_50), .in2(out_reg_1_reg_1));
  lt_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_kruskalF_28880_30735 (.out1(out_lt_expr_FU_16_16_16_135_i0_fu_kruskalF_28880_30735), .in1(out_UIdata_converter_FU_127_i0_fu_kruskalF_28880_30106), .in2(out_IIdata_converter_FU_128_i0_fu_kruskalF_28880_30108));
  ui_rshift_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(1), .BITSIZE_out1(5), .PRECISION(32)) fu_kruskalF_28880_30758 (.out1(out_ui_rshift_expr_FU_8_0_8_174_i0_fu_kruskalF_28880_30758), .in1(out_ui_lshift_expr_FU_8_0_8_156_i0_fu_kruskalF_28880_30278), .in2(out_const_7));
  ui_rshift_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(1), .BITSIZE_out1(4), .PRECISION(32)) fu_kruskalF_28880_30762 (.out1(out_ui_rshift_expr_FU_8_0_8_174_i1_fu_kruskalF_28880_30762), .in1(out_IUdata_converter_FU_32_i0_fu_kruskalF_28880_30255), .in2(out_const_7));
  ui_plus_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(4), .BITSIZE_out1(6)) fu_kruskalF_28880_30765 (.out1(out_ui_plus_expr_FU_8_8_8_166_i0_fu_kruskalF_28880_30765), .in1(out_ui_rshift_expr_FU_8_0_8_174_i0_fu_kruskalF_28880_30758), .in2(out_ui_rshift_expr_FU_8_0_8_174_i1_fu_kruskalF_28880_30762));
  ui_lshift_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(1), .BITSIZE_out1(7), .PRECISION(32)) fu_kruskalF_28880_30769 (.out1(out_ui_lshift_expr_FU_8_0_8_156_i2_fu_kruskalF_28880_30769), .in1(out_ui_plus_expr_FU_8_8_8_166_i0_fu_kruskalF_28880_30765), .in2(out_const_7));
  ui_bit_and_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_kruskalF_28880_30773 (.out1(out_ui_bit_and_expr_FU_1_0_1_141_i0_fu_kruskalF_28880_30773), .in1(out_IUdata_converter_FU_32_i0_fu_kruskalF_28880_30255), .in2(out_const_7));
  ui_rshift_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(2), .BITSIZE_out1(7), .PRECISION(32)) fu_kruskalF_28880_30777 (.out1(out_ui_rshift_expr_FU_16_0_16_170_i0_fu_kruskalF_28880_30777), .in1(out_ui_lshift_expr_FU_16_0_16_152_i0_fu_kruskalF_28880_30285), .in2(out_const_10));
  ui_rshift_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(2), .BITSIZE_out1(2), .PRECISION(32)) fu_kruskalF_28880_30780 (.out1(out_ui_rshift_expr_FU_8_0_8_175_i0_fu_kruskalF_28880_30780), .in1(out_IUdata_converter_FU_32_i0_fu_kruskalF_28880_30255), .in2(out_const_10));
  ui_plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(2), .BITSIZE_out1(8)) fu_kruskalF_28880_30782 (.out1(out_ui_plus_expr_FU_8_8_8_166_i1_fu_kruskalF_28880_30782), .in1(out_ui_rshift_expr_FU_16_0_16_170_i0_fu_kruskalF_28880_30777), .in2(out_ui_rshift_expr_FU_8_0_8_175_i0_fu_kruskalF_28880_30780));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(11), .PRECISION(32)) fu_kruskalF_28880_30786 (.out1(out_ui_lshift_expr_FU_16_0_16_152_i3_fu_kruskalF_28880_30786), .in1(out_ui_plus_expr_FU_8_8_8_166_i1_fu_kruskalF_28880_30782), .in2(out_const_10));
  ui_bit_and_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(3), .BITSIZE_out1(3)) fu_kruskalF_28880_30791 (.out1(out_ui_bit_and_expr_FU_8_0_8_144_i0_fu_kruskalF_28880_30791), .in1(out_IUdata_converter_FU_32_i0_fu_kruskalF_28880_30255), .in2(out_const_13));
  ui_rshift_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(1), .BITSIZE_out1(5), .PRECISION(32)) fu_kruskalF_28880_30795 (.out1(out_ui_rshift_expr_FU_8_0_8_174_i2_fu_kruskalF_28880_30795), .in1(out_ui_lshift_expr_FU_8_0_8_156_i1_fu_kruskalF_28880_30368), .in2(out_const_7));
  ui_rshift_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(1), .BITSIZE_out1(4), .PRECISION(32)) fu_kruskalF_28880_30798 (.out1(out_ui_rshift_expr_FU_8_0_8_174_i3_fu_kruskalF_28880_30798), .in1(out_IUdata_converter_FU_70_i0_fu_kruskalF_28880_30350), .in2(out_const_7));
  ui_plus_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(4), .BITSIZE_out1(6)) fu_kruskalF_28880_30800 (.out1(out_ui_plus_expr_FU_8_8_8_166_i2_fu_kruskalF_28880_30800), .in1(out_ui_rshift_expr_FU_8_0_8_174_i2_fu_kruskalF_28880_30795), .in2(out_ui_rshift_expr_FU_8_0_8_174_i3_fu_kruskalF_28880_30798));
  ui_lshift_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(1), .BITSIZE_out1(7), .PRECISION(32)) fu_kruskalF_28880_30803 (.out1(out_ui_lshift_expr_FU_8_0_8_156_i3_fu_kruskalF_28880_30803), .in1(out_ui_plus_expr_FU_8_8_8_166_i2_fu_kruskalF_28880_30800), .in2(out_const_7));
  ui_bit_and_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_kruskalF_28880_30806 (.out1(out_ui_bit_and_expr_FU_1_0_1_141_i1_fu_kruskalF_28880_30806), .in1(out_IUdata_converter_FU_70_i0_fu_kruskalF_28880_30350), .in2(out_const_7));
  ui_rshift_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(2), .BITSIZE_out1(7), .PRECISION(32)) fu_kruskalF_28880_30810 (.out1(out_ui_rshift_expr_FU_16_0_16_170_i1_fu_kruskalF_28880_30810), .in1(out_ui_lshift_expr_FU_16_0_16_152_i1_fu_kruskalF_28880_30374), .in2(out_const_10));
  ui_rshift_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(2), .BITSIZE_out1(2), .PRECISION(32)) fu_kruskalF_28880_30813 (.out1(out_ui_rshift_expr_FU_8_0_8_175_i1_fu_kruskalF_28880_30813), .in1(out_IUdata_converter_FU_70_i0_fu_kruskalF_28880_30350), .in2(out_const_10));
  ui_plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(2), .BITSIZE_out1(8)) fu_kruskalF_28880_30815 (.out1(out_ui_plus_expr_FU_8_8_8_166_i3_fu_kruskalF_28880_30815), .in1(out_ui_rshift_expr_FU_16_0_16_170_i1_fu_kruskalF_28880_30810), .in2(out_ui_rshift_expr_FU_8_0_8_175_i1_fu_kruskalF_28880_30813));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(11), .PRECISION(32)) fu_kruskalF_28880_30818 (.out1(out_ui_lshift_expr_FU_16_0_16_152_i4_fu_kruskalF_28880_30818), .in1(out_ui_plus_expr_FU_8_8_8_166_i3_fu_kruskalF_28880_30815), .in2(out_const_10));
  ui_bit_and_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(3), .BITSIZE_out1(3)) fu_kruskalF_28880_30821 (.out1(out_ui_bit_and_expr_FU_8_0_8_144_i1_fu_kruskalF_28880_30821), .in1(out_IUdata_converter_FU_70_i0_fu_kruskalF_28880_30350), .in2(out_const_13));
  ui_rshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(1), .BITSIZE_out1(8), .PRECISION(32)) fu_kruskalF_28880_30825 (.out1(out_ui_rshift_expr_FU_16_0_16_171_i0_fu_kruskalF_28880_30825), .in1(out_ui_lshift_expr_FU_16_0_16_153_i0_fu_kruskalF_28880_30478), .in2(out_const_7));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(7), .PRECISION(32)) fu_kruskalF_28880_30828 (.out1(out_ui_rshift_expr_FU_8_0_8_174_i4_fu_kruskalF_28880_30828), .in1(out_IUdata_converter_FU_91_i0_fu_kruskalF_28880_30450), .in2(out_const_7));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(7), .BITSIZE_out1(9)) fu_kruskalF_28880_30830 (.out1(out_ui_plus_expr_FU_8_8_8_166_i4_fu_kruskalF_28880_30830), .in1(out_ui_rshift_expr_FU_16_0_16_171_i0_fu_kruskalF_28880_30825), .in2(out_ui_rshift_expr_FU_8_0_8_174_i4_fu_kruskalF_28880_30828));
  ui_lshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(1), .BITSIZE_out1(10), .PRECISION(32)) fu_kruskalF_28880_30834 (.out1(out_ui_lshift_expr_FU_16_0_16_153_i1_fu_kruskalF_28880_30834), .in1(out_ui_plus_expr_FU_8_8_8_166_i4_fu_kruskalF_28880_30830), .in2(out_const_7));
  ui_bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_kruskalF_28880_30838 (.out1(out_ui_bit_and_expr_FU_1_0_1_141_i2_fu_kruskalF_28880_30838), .in1(out_IUdata_converter_FU_91_i0_fu_kruskalF_28880_30450), .in2(out_const_7));
  ui_rshift_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(2), .BITSIZE_out1(10), .PRECISION(32)) fu_kruskalF_28880_30842 (.out1(out_ui_rshift_expr_FU_16_0_16_170_i2_fu_kruskalF_28880_30842), .in1(out_ui_lshift_expr_FU_16_0_16_152_i2_fu_kruskalF_28880_30484), .in2(out_const_10));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(5), .PRECISION(32)) fu_kruskalF_28880_30845 (.out1(out_ui_rshift_expr_FU_8_0_8_175_i2_fu_kruskalF_28880_30845), .in1(out_IUdata_converter_FU_91_i0_fu_kruskalF_28880_30450), .in2(out_const_10));
  ui_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(5), .BITSIZE_out1(11)) fu_kruskalF_28880_30847 (.out1(out_ui_plus_expr_FU_16_16_16_161_i0_fu_kruskalF_28880_30847), .in1(out_ui_rshift_expr_FU_16_0_16_170_i2_fu_kruskalF_28880_30842), .in2(out_ui_rshift_expr_FU_8_0_8_175_i2_fu_kruskalF_28880_30845));
  ui_lshift_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(2), .BITSIZE_out1(14), .PRECISION(32)) fu_kruskalF_28880_30850 (.out1(out_ui_lshift_expr_FU_16_0_16_152_i5_fu_kruskalF_28880_30850), .in1(out_ui_plus_expr_FU_16_16_16_161_i0_fu_kruskalF_28880_30847), .in2(out_const_10));
  ui_bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_out1(3)) fu_kruskalF_28880_30854 (.out1(out_ui_bit_and_expr_FU_8_0_8_144_i2_fu_kruskalF_28880_30854), .in1(out_IUdata_converter_FU_91_i0_fu_kruskalF_28880_30450), .in2(out_const_13));
  ui_rshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(1), .BITSIZE_out1(8), .PRECISION(32)) fu_kruskalF_28880_30858 (.out1(out_ui_rshift_expr_FU_16_0_16_172_i0_fu_kruskalF_28880_30858), .in1(out_ui_lshift_expr_FU_16_0_16_154_i0_fu_kruskalF_28880_30542), .in2(out_const_7));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(7), .PRECISION(32)) fu_kruskalF_28880_30862 (.out1(out_ui_rshift_expr_FU_8_0_8_176_i0_fu_kruskalF_28880_30862), .in1(out_UUdata_converter_FU_94_i0_fu_kruskalF_28880_30006), .in2(out_const_7));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(7), .BITSIZE_out1(9)) fu_kruskalF_28880_30865 (.out1(out_ui_plus_expr_FU_8_8_8_166_i5_fu_kruskalF_28880_30865), .in1(out_ui_rshift_expr_FU_16_0_16_172_i0_fu_kruskalF_28880_30858), .in2(out_ui_rshift_expr_FU_8_0_8_176_i0_fu_kruskalF_28880_30862));
  ui_lshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(1), .BITSIZE_out1(10), .PRECISION(32)) fu_kruskalF_28880_30869 (.out1(out_ui_lshift_expr_FU_16_0_16_154_i2_fu_kruskalF_28880_30869), .in1(out_ui_plus_expr_FU_8_8_8_166_i5_fu_kruskalF_28880_30865), .in2(out_const_7));
  ui_bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_kruskalF_28880_30873 (.out1(out_ui_bit_and_expr_FU_1_0_1_142_i0_fu_kruskalF_28880_30873), .in1(out_UUdata_converter_FU_94_i0_fu_kruskalF_28880_30006), .in2(out_const_7));
  ui_rshift_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(2), .BITSIZE_out1(10), .PRECISION(32)) fu_kruskalF_28880_30877 (.out1(out_ui_rshift_expr_FU_16_0_16_173_i0_fu_kruskalF_28880_30877), .in1(out_ui_lshift_expr_FU_16_0_16_155_i0_fu_kruskalF_28880_30549), .in2(out_const_10));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(5), .PRECISION(32)) fu_kruskalF_28880_30880 (.out1(out_ui_rshift_expr_FU_8_0_8_177_i0_fu_kruskalF_28880_30880), .in1(out_UUdata_converter_FU_94_i0_fu_kruskalF_28880_30006), .in2(out_const_10));
  ui_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(5), .BITSIZE_out1(10)) fu_kruskalF_28880_30883 (.out1(out_ui_plus_expr_FU_16_16_16_161_i1_fu_kruskalF_28880_30883), .in1(out_reg_41_reg_41), .in2(out_reg_42_reg_42));
  ui_lshift_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(2), .BITSIZE_out1(13), .PRECISION(32)) fu_kruskalF_28880_30886 (.out1(out_ui_lshift_expr_FU_16_0_16_155_i2_fu_kruskalF_28880_30886), .in1(out_ui_plus_expr_FU_16_16_16_161_i1_fu_kruskalF_28880_30883), .in2(out_const_10));
  ui_bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_out1(3)) fu_kruskalF_28880_30891 (.out1(out_ui_bit_and_expr_FU_8_0_8_145_i0_fu_kruskalF_28880_30891), .in1(out_UUdata_converter_FU_94_i0_fu_kruskalF_28880_30006), .in2(out_const_13));
  ui_rshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(1), .BITSIZE_out1(8), .PRECISION(32)) fu_kruskalF_28880_30896 (.out1(out_ui_rshift_expr_FU_16_0_16_172_i1_fu_kruskalF_28880_30896), .in1(out_ui_lshift_expr_FU_16_0_16_154_i1_fu_kruskalF_28880_30572), .in2(out_const_7));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(7), .PRECISION(32)) fu_kruskalF_28880_30899 (.out1(out_ui_rshift_expr_FU_8_0_8_176_i1_fu_kruskalF_28880_30899), .in1(out_UUdata_converter_FU_115_i0_fu_kruskalF_28880_29986), .in2(out_const_7));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(7), .BITSIZE_out1(9)) fu_kruskalF_28880_30901 (.out1(out_ui_plus_expr_FU_8_8_8_166_i6_fu_kruskalF_28880_30901), .in1(out_ui_rshift_expr_FU_16_0_16_172_i1_fu_kruskalF_28880_30896), .in2(out_ui_rshift_expr_FU_8_0_8_176_i1_fu_kruskalF_28880_30899));
  ui_lshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(1), .BITSIZE_out1(10), .PRECISION(32)) fu_kruskalF_28880_30904 (.out1(out_ui_lshift_expr_FU_16_0_16_154_i3_fu_kruskalF_28880_30904), .in1(out_ui_plus_expr_FU_8_8_8_166_i6_fu_kruskalF_28880_30901), .in2(out_const_7));
  ui_bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_kruskalF_28880_30907 (.out1(out_ui_bit_and_expr_FU_1_0_1_142_i1_fu_kruskalF_28880_30907), .in1(out_UUdata_converter_FU_115_i0_fu_kruskalF_28880_29986), .in2(out_const_7));
  ui_rshift_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(2), .BITSIZE_out1(10), .PRECISION(32)) fu_kruskalF_28880_30911 (.out1(out_ui_rshift_expr_FU_16_0_16_173_i1_fu_kruskalF_28880_30911), .in1(out_ui_lshift_expr_FU_16_0_16_155_i1_fu_kruskalF_28880_30578), .in2(out_const_10));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(5), .PRECISION(32)) fu_kruskalF_28880_30914 (.out1(out_ui_rshift_expr_FU_8_0_8_177_i1_fu_kruskalF_28880_30914), .in1(out_UUdata_converter_FU_115_i0_fu_kruskalF_28880_29986), .in2(out_const_10));
  ui_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(5), .BITSIZE_out1(10)) fu_kruskalF_28880_30916 (.out1(out_ui_plus_expr_FU_16_16_16_161_i2_fu_kruskalF_28880_30916), .in1(out_ui_rshift_expr_FU_16_0_16_173_i1_fu_kruskalF_28880_30911), .in2(out_ui_rshift_expr_FU_8_0_8_177_i1_fu_kruskalF_28880_30914));
  ui_lshift_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(2), .BITSIZE_out1(13), .PRECISION(32)) fu_kruskalF_28880_30919 (.out1(out_ui_lshift_expr_FU_16_0_16_155_i3_fu_kruskalF_28880_30919), .in1(out_ui_plus_expr_FU_16_16_16_161_i2_fu_kruskalF_28880_30916), .in2(out_const_10));
  ui_bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_out1(3)) fu_kruskalF_28880_30922 (.out1(out_ui_bit_and_expr_FU_8_0_8_145_i1_fu_kruskalF_28880_30922), .in1(out_UUdata_converter_FU_115_i0_fu_kruskalF_28880_29986), .in2(out_const_13));
  multi_read_cond_FU #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) fu_kruskalF_28880_30982 (.out1(out_multi_read_cond_FU_39_i0_fu_kruskalF_28880_30982), .in1({out_reg_21_reg_21, out_reg_20_reg_20}));
  truth_not_expr_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_kruskalF_28880_30985 (.out1(out_truth_not_expr_FU_1_1_140_i0_fu_kruskalF_28880_30985), .in1(out_ui_ne_expr_FU_8_0_8_158_i0_fu_kruskalF_28880_30717));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_kruskalF_28880_30988 (.out1(out_truth_and_expr_FU_1_1_1_139_i0_fu_kruskalF_28880_30988), .in1(out_reg_17_reg_17), .in2(out_truth_not_expr_FU_1_1_140_i0_fu_kruskalF_28880_30985));
  multi_read_cond_FU #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) fu_kruskalF_28880_30989 (.out1(out_multi_read_cond_FU_88_i0_fu_kruskalF_28880_30989), .in1({out_reg_34_reg_34, out_reg_33_reg_33}));
  truth_not_expr_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_kruskalF_28880_30992 (.out1(out_truth_not_expr_FU_1_1_140_i1_fu_kruskalF_28880_30992), .in1(out_ui_ne_expr_FU_8_0_8_158_i1_fu_kruskalF_28880_30727));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_kruskalF_28880_30995 (.out1(out_truth_and_expr_FU_1_1_1_139_i1_fu_kruskalF_28880_30995), .in1(out_reg_31_reg_31), .in2(out_truth_not_expr_FU_1_1_140_i1_fu_kruskalF_28880_30992));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerMout_Wdata_ram0_0 (.out1(sig_in_bus_mergerMout_Wdata_ram0_0), .in1(sig_in_vector_bus_mergerMout_Wdata_ram0_0));
  join_signal #(.BITSIZE_in1(14), .PORTSIZE_in1(2), .BITSIZE_out1(28)) join_signalbus_mergerMout_addr_ram1_0 (.out1(sig_in_bus_mergerMout_addr_ram1_0), .in1(sig_in_vector_bus_mergerMout_addr_ram1_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerMout_data_ram_size2_0 (.out1(sig_in_bus_mergerMout_data_ram_size2_0), .in1(sig_in_vector_bus_mergerMout_data_ram_size2_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_oe_ram3_0 (.out1(sig_in_bus_mergerMout_oe_ram3_0), .in1(sig_in_vector_bus_mergerMout_oe_ram3_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_we_ram4_0 (.out1(sig_in_bus_mergerMout_we_ram4_0), .in1(sig_in_vector_bus_mergerMout_we_ram4_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_0 (.out1(sig_in_bus_mergerSout_DataRdy5_0), .in1(sig_in_vector_bus_mergerSout_DataRdy5_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_1 (.out1(sig_in_bus_mergerSout_DataRdy5_1), .in1(sig_in_vector_bus_mergerSout_DataRdy5_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_2 (.out1(sig_in_bus_mergerSout_DataRdy5_2), .in1(sig_in_vector_bus_mergerSout_DataRdy5_2));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_3 (.out1(sig_in_bus_mergerSout_DataRdy5_3), .in1(sig_in_vector_bus_mergerSout_DataRdy5_3));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_4 (.out1(sig_in_bus_mergerSout_DataRdy5_4), .in1(sig_in_vector_bus_mergerSout_DataRdy5_4));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_5 (.out1(sig_in_bus_mergerSout_DataRdy5_5), .in1(sig_in_vector_bus_mergerSout_DataRdy5_5));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_0 (.out1(sig_in_bus_mergerSout_Rdata_ram6_0), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_1 (.out1(sig_in_bus_mergerSout_Rdata_ram6_1), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_1));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_2 (.out1(sig_in_bus_mergerSout_Rdata_ram6_2), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_2));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_3 (.out1(sig_in_bus_mergerSout_Rdata_ram6_3), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_3));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_4 (.out1(sig_in_bus_mergerSout_Rdata_ram6_4), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_4));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_5 (.out1(sig_in_bus_mergerSout_Rdata_ram6_5), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_5));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288677_0 (.out1(sig_in_bus_mergerproxy_in1_288677_0), .in1(sig_in_vector_bus_mergerproxy_in1_288677_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288688_0 (.out1(sig_in_bus_mergerproxy_in1_288688_0), .in1(sig_in_vector_bus_mergerproxy_in1_288688_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288699_0 (.out1(sig_in_bus_mergerproxy_in1_288699_0), .in1(sig_in_vector_bus_mergerproxy_in1_288699_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_2887010_0 (.out1(sig_in_bus_mergerproxy_in1_2887010_0), .in1(sig_in_vector_bus_mergerproxy_in1_2887010_0));
  join_signal #(.BITSIZE_in1(14), .PORTSIZE_in1(2), .BITSIZE_out1(28)) join_signalbus_mergerproxy_in2_2886711_0 (.out1(sig_in_bus_mergerproxy_in2_2886711_0), .in1(sig_in_vector_bus_mergerproxy_in2_2886711_0));
  join_signal #(.BITSIZE_in1(14), .PORTSIZE_in1(2), .BITSIZE_out1(28)) join_signalbus_mergerproxy_in2_2886812_0 (.out1(sig_in_bus_mergerproxy_in2_2886812_0), .in1(sig_in_vector_bus_mergerproxy_in2_2886812_0));
  join_signal #(.BITSIZE_in1(14), .PORTSIZE_in1(2), .BITSIZE_out1(28)) join_signalbus_mergerproxy_in2_2886913_0 (.out1(sig_in_bus_mergerproxy_in2_2886913_0), .in1(sig_in_vector_bus_mergerproxy_in2_2886913_0));
  join_signal #(.BITSIZE_in1(14), .PORTSIZE_in1(2), .BITSIZE_out1(28)) join_signalbus_mergerproxy_in2_2887014_0 (.out1(sig_in_bus_mergerproxy_in2_2887014_0), .in1(sig_in_vector_bus_mergerproxy_in2_2887014_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_2886715_0 (.out1(sig_in_bus_mergerproxy_in3_2886715_0), .in1(sig_in_vector_bus_mergerproxy_in3_2886715_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_2886816_0 (.out1(sig_in_bus_mergerproxy_in3_2886816_0), .in1(sig_in_vector_bus_mergerproxy_in3_2886816_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_2886917_0 (.out1(sig_in_bus_mergerproxy_in3_2886917_0), .in1(sig_in_vector_bus_mergerproxy_in3_2886917_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_2887018_0 (.out1(sig_in_bus_mergerproxy_in3_2887018_0), .in1(sig_in_vector_bus_mergerproxy_in3_2887018_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886719_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886719_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886719_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886820_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886820_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886820_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886921_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886921_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886921_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2887022_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2887022_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2887022_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886723_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886723_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886723_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886824_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886824_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886824_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886925_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886925_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886925_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2887026_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2887026_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2887026_0));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_25_i0_fu_kruskalF_28880_29904), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_26_i0_fu_kruskalF_28880_30088), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_21_i0_fu_kruskalF_28880_30380), .wenable(wrenable_reg_10));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_22_i0_fu_kruskalF_28880_30396), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_24_i0_fu_kruskalF_28880_30421), .wenable(wrenable_reg_12));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_MUX_151_reg_13_0_0_0), .wenable(wrenable_reg_13));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_14 (.out1(out_reg_14_reg_14), .clock(clock), .reset(reset), .in1(out_MUX_152_reg_14_0_0_0), .wenable(wrenable_reg_14));
  register_SE #(.BITSIZE_in1(5), .BITSIZE_out1(5)) reg_15 (.out1(out_reg_15_reg_15), .clock(clock), .reset(reset), .in1(out_MUX_153_reg_15_0_0_0), .wenable(wrenable_reg_15));
  register_SE #(.BITSIZE_in1(11), .BITSIZE_out1(11)) reg_16 (.out1(out_reg_16_reg_16), .clock(clock), .reset(reset), .in1(out_ui_bit_ior_concat_expr_FU_147_i0_fu_kruskalF_28880_30288), .wenable(wrenable_reg_16));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_17 (.out1(out_reg_17_reg_17), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_159_i0_fu_kruskalF_28880_30719), .wenable(wrenable_reg_17));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_18 (.out1(out_reg_18_reg_18), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_8_0_8_138_i0_fu_kruskalF_28880_29815), .wenable(wrenable_reg_18));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_19 (.out1(out_reg_19_reg_19), .clock(clock), .reset(reset), .in1(out_MUX_157_reg_19_0_0_0), .wenable(wrenable_reg_19));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_12_i0_fu_kruskalF_28880_30227), .wenable(wrenable_reg_2));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_20 (.out1(out_reg_20_reg_20), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_158_i0_fu_kruskalF_28880_30717), .wenable(wrenable_reg_20));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_21 (.out1(out_reg_21_reg_21), .clock(clock), .reset(reset), .in1(out_truth_and_expr_FU_1_1_1_139_i0_fu_kruskalF_28880_30988), .wenable(wrenable_reg_21));
  register_SE #(.BITSIZE_in1(5), .BITSIZE_out1(5)) reg_22 (.out1(out_reg_22_reg_22), .clock(clock), .reset(reset), .in1(out_MUX_161_reg_22_0_0_0), .wenable(wrenable_reg_22));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_23 (.out1(out_reg_23_reg_23), .clock(clock), .reset(reset), .in1(out_gt_expr_FU_8_0_8_133_i0_fu_kruskalF_28880_30723), .wenable(wrenable_reg_23));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_24 (.out1(out_reg_24_reg_24), .clock(clock), .reset(reset), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_array_28862_0), .wenable(wrenable_reg_24));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_25 (.out1(out_reg_25_reg_25), .clock(clock), .reset(reset), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_array_28864_0), .wenable(wrenable_reg_25));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_26 (.out1(out_reg_26_reg_26), .clock(clock), .reset(reset), .in1(out_MUX_165_reg_26_0_0_0), .wenable(wrenable_reg_26));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_27 (.out1(out_reg_27_reg_27), .clock(clock), .reset(reset), .in1(out_MUX_166_reg_27_0_0_0), .wenable(wrenable_reg_27));
  register_SE #(.BITSIZE_in1(5), .BITSIZE_out1(5)) reg_28 (.out1(out_reg_28_reg_28), .clock(clock), .reset(reset), .in1(out_MUX_167_reg_28_0_0_0), .wenable(wrenable_reg_28));
  register_SE #(.BITSIZE_in1(5), .BITSIZE_out1(5)) reg_29 (.out1(out_reg_29_reg_29), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_68_i0_fu_kruskalF_28880_30040), .wenable(wrenable_reg_29));
  register_SE #(.BITSIZE_in1(14), .BITSIZE_out1(14)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_14_i0_fu_kruskalF_28880_30252), .wenable(wrenable_reg_3));
  register_SE #(.BITSIZE_in1(11), .BITSIZE_out1(11)) reg_30 (.out1(out_reg_30_reg_30), .clock(clock), .reset(reset), .in1(out_ui_bit_ior_concat_expr_FU_147_i1_fu_kruskalF_28880_30377), .wenable(wrenable_reg_30));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_31 (.out1(out_reg_31_reg_31), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_160_i0_fu_kruskalF_28880_30725), .wenable(wrenable_reg_31));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_32 (.out1(out_reg_32_reg_32), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_8_0_8_163_i1_fu_kruskalF_28880_30042), .wenable(wrenable_reg_32));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_33 (.out1(out_reg_33_reg_33), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_158_i1_fu_kruskalF_28880_30727), .wenable(wrenable_reg_33));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_34 (.out1(out_reg_34_reg_34), .clock(clock), .reset(reset), .in1(out_truth_and_expr_FU_1_1_1_139_i1_fu_kruskalF_28880_30995), .wenable(wrenable_reg_34));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_35 (.out1(out_reg_35_reg_35), .clock(clock), .reset(reset), .in1(out_MUX_175_reg_35_0_0_0), .wenable(wrenable_reg_35));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_36 (.out1(out_reg_36_reg_36), .clock(clock), .reset(reset), .in1(out_MUX_176_reg_36_0_0_0), .wenable(wrenable_reg_36));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_37 (.out1(out_reg_37_reg_37), .clock(clock), .reset(reset), .in1(out_MUX_177_reg_37_0_0_0), .wenable(wrenable_reg_37));
  register_STD #(.BITSIZE_in1(15), .BITSIZE_out1(15)) reg_38 (.out1(out_reg_38_reg_38), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_92_i0_fu_kruskalF_28880_30408), .wenable(wrenable_reg_38));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_39 (.out1(out_reg_39_reg_39), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_93_i0_fu_kruskalF_28880_30411), .wenable(wrenable_reg_39));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_15_i0_fu_kruskalF_28880_30291), .wenable(wrenable_reg_4));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_40 (.out1(out_reg_40_reg_40), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_32_32_32_169_i1_fu_kruskalF_28880_30430), .wenable(wrenable_reg_40));
  register_SE #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_41 (.out1(out_reg_41_reg_41), .clock(clock), .reset(reset), .in1(out_ui_rshift_expr_FU_16_0_16_173_i0_fu_kruskalF_28880_30877), .wenable(wrenable_reg_41));
  register_SE #(.BITSIZE_in1(5), .BITSIZE_out1(5)) reg_42 (.out1(out_reg_42_reg_42), .clock(clock), .reset(reset), .in1(out_ui_rshift_expr_FU_8_0_8_177_i0_fu_kruskalF_28880_30880), .wenable(wrenable_reg_42));
  register_SE #(.BITSIZE_in1(3), .BITSIZE_out1(3)) reg_43 (.out1(out_reg_43_reg_43), .clock(clock), .reset(reset), .in1(out_ui_bit_and_expr_FU_8_0_8_145_i0_fu_kruskalF_28880_30891), .wenable(wrenable_reg_43));
  register_STD #(.BITSIZE_in1(16), .BITSIZE_out1(16)) reg_44 (.out1(out_reg_44_reg_44), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_167_i6_fu_kruskalF_28880_30564), .wenable(wrenable_reg_44));
  register_STD #(.BITSIZE_in1(15), .BITSIZE_out1(15)) reg_45 (.out1(out_reg_45_reg_45), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_117_i0_fu_kruskalF_28880_30588), .wenable(wrenable_reg_45));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_46 (.out1(out_reg_46_reg_46), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_118_i0_fu_kruskalF_28880_30591), .wenable(wrenable_reg_46));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_47 (.out1(out_reg_47_reg_47), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_95_i0_fu_kruskalF_28880_30051), .wenable(wrenable_reg_47));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_48 (.out1(out_reg_48_reg_48), .clock(clock), .reset(reset), .in1(out_UIdata_converter_FU_96_i0_fu_kruskalF_28880_30087), .wenable(wrenable_reg_48));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_49 (.out1(out_reg_49_reg_49), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_108_i0_fu_kruskalF_28880_29896), .wenable(wrenable_reg_49));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_16_i0_fu_kruskalF_28880_30299), .wenable(wrenable_reg_5));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_50 (.out1(out_reg_50_reg_50), .clock(clock), .reset(reset), .in1(out_MUX_192_reg_50_0_0_0), .wenable(wrenable_reg_50));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_17_i0_fu_kruskalF_28880_30307), .wenable(wrenable_reg_6));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_18_i0_fu_kruskalF_28880_30318), .wenable(wrenable_reg_7));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_19_i0_fu_kruskalF_28880_30326), .wenable(wrenable_reg_8));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_20_i0_fu_kruskalF_28880_30330), .wenable(wrenable_reg_9));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerMout_Wdata_ram0_ (.out1(Mout_Wdata_ram), .in1(sig_out_bus_mergerMout_Wdata_ram0_));
  split_signal #(.BITSIZE_in1(28), .BITSIZE_out1(14), .PORTSIZE_out1(2)) split_signalbus_mergerMout_addr_ram1_ (.out1(Mout_addr_ram), .in1(sig_out_bus_mergerMout_addr_ram1_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerMout_data_ram_size2_ (.out1(Mout_data_ram_size), .in1(sig_out_bus_mergerMout_data_ram_size2_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_oe_ram3_ (.out1(Mout_oe_ram), .in1(sig_out_bus_mergerMout_oe_ram3_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_we_ram4_ (.out1(Mout_we_ram), .in1(sig_out_bus_mergerMout_we_ram4_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerSout_DataRdy5_ (.out1(Sout_DataRdy), .in1(sig_out_bus_mergerSout_DataRdy5_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerSout_Rdata_ram6_ (.out1(Sout_Rdata_ram), .in1(sig_out_bus_mergerSout_Rdata_ram6_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288677_ (.out1(proxy_in1_28867), .in1(sig_out_bus_mergerproxy_in1_288677_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288688_ (.out1(proxy_in1_28868), .in1(sig_out_bus_mergerproxy_in1_288688_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288699_ (.out1(proxy_in1_28869), .in1(sig_out_bus_mergerproxy_in1_288699_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_2887010_ (.out1(proxy_in1_28870), .in1(sig_out_bus_mergerproxy_in1_2887010_));
  split_signal #(.BITSIZE_in1(28), .BITSIZE_out1(14), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_2886711_ (.out1(proxy_in2_28867), .in1(sig_out_bus_mergerproxy_in2_2886711_));
  split_signal #(.BITSIZE_in1(28), .BITSIZE_out1(14), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_2886812_ (.out1(proxy_in2_28868), .in1(sig_out_bus_mergerproxy_in2_2886812_));
  split_signal #(.BITSIZE_in1(28), .BITSIZE_out1(14), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_2886913_ (.out1(proxy_in2_28869), .in1(sig_out_bus_mergerproxy_in2_2886913_));
  split_signal #(.BITSIZE_in1(28), .BITSIZE_out1(14), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_2887014_ (.out1(proxy_in2_28870), .in1(sig_out_bus_mergerproxy_in2_2887014_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_2886715_ (.out1(proxy_in3_28867), .in1(sig_out_bus_mergerproxy_in3_2886715_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_2886816_ (.out1(proxy_in3_28868), .in1(sig_out_bus_mergerproxy_in3_2886816_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_2886917_ (.out1(proxy_in3_28869), .in1(sig_out_bus_mergerproxy_in3_2886917_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_2887018_ (.out1(proxy_in3_28870), .in1(sig_out_bus_mergerproxy_in3_2887018_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886719_ (.out1(proxy_sel_LOAD_28867), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886719_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886820_ (.out1(proxy_sel_LOAD_28868), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886820_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886921_ (.out1(proxy_sel_LOAD_28869), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886921_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2887022_ (.out1(proxy_sel_LOAD_28870), .in1(sig_out_bus_mergerproxy_sel_LOAD_2887022_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886723_ (.out1(proxy_sel_STORE_28867), .in1(sig_out_bus_mergerproxy_sel_STORE_2886723_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886824_ (.out1(proxy_sel_STORE_28868), .in1(sig_out_bus_mergerproxy_sel_STORE_2886824_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886925_ (.out1(proxy_sel_STORE_28869), .in1(sig_out_bus_mergerproxy_sel_STORE_2886925_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2887026_ (.out1(proxy_sel_STORE_28870), .in1(sig_out_bus_mergerproxy_sel_STORE_2887026_));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(14), .BITSIZE_in2(11), .BITSIZE_out1(15), .LSB_PARAMETER(0)) ui_pointer_plus_expr_FU_16_16_16_167_i8 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_167_i8_ui_pointer_plus_expr_FU_16_16_16_167_i8), .in1(out_reg_3_reg_3), .in2(out_reg_16_reg_16));
  // io-signal post fix
  assign OUT_CONDITION_kruskalF_28880_29856 = out_read_cond_FU_43_i0_fu_kruskalF_28880_29856;
  assign OUT_CONDITION_kruskalF_28880_29870 = out_read_cond_FU_44_i0_fu_kruskalF_28880_29870;
  assign OUT_CONDITION_kruskalF_28880_30083 = out_read_cond_FU_97_i0_fu_kruskalF_28880_30083;
  assign OUT_CONDITION_kruskalF_28880_30098 = out_read_cond_FU_110_i0_fu_kruskalF_28880_30098;
  assign OUT_CONDITION_kruskalF_28880_30104 = out_read_cond_FU_112_i0_fu_kruskalF_28880_30104;
  assign OUT_CONDITION_kruskalF_28880_30109 = out_read_cond_FU_129_i0_fu_kruskalF_28880_30109;
  assign OUT_MULTIIF_kruskalF_28880_30982 = out_multi_read_cond_FU_39_i0_fu_kruskalF_28880_30982;
  assign OUT_MULTIIF_kruskalF_28880_30989 = out_multi_read_cond_FU_88_i0_fu_kruskalF_28880_30989;

endmodule

// FSM based controller description for kruskalF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_kruskalF(done_port, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE, fuselector_BMEMORY_CTRLN_130_i0_LOAD, fuselector_BMEMORY_CTRLN_130_i0_STORE, selector_MUX_151_reg_13_0_0_0, selector_MUX_152_reg_14_0_0_0, selector_MUX_153_reg_15_0_0_0, selector_MUX_157_reg_19_0_0_0, selector_MUX_161_reg_22_0_0_0, selector_MUX_165_reg_26_0_0_0, selector_MUX_166_reg_27_0_0_0, selector_MUX_167_reg_28_0_0_0, selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0, selector_MUX_175_reg_35_0_0_0, selector_MUX_176_reg_36_0_0_0, selector_MUX_177_reg_37_0_0_0, selector_MUX_192_reg_50_0_0_0, selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0, selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0, selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1, selector_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0, selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0, selector_MUX_50_PROXY_CTRLN_7_i0_0_0_0, selector_MUX_50_PROXY_CTRLN_7_i0_0_0_1, selector_MUX_55_PROXY_CTRLN_8_i0_1_0_0, selector_MUX_55_PROXY_CTRLN_8_i0_1_0_1, selector_MUX_55_PROXY_CTRLN_8_i0_1_1_0, selector_MUX_59_PROXY_CTRLN_8_i1_1_0_0, selector_MUX_63_PROXY_CTRLN_9_i0_1_0_0, selector_MUX_63_PROXY_CTRLN_9_i0_1_0_1, fuselector_PROXY_CTRLN_6_i0_LOAD, fuselector_PROXY_CTRLN_6_i0_STORE, fuselector_PROXY_CTRLN_7_i0_LOAD, fuselector_PROXY_CTRLN_7_i0_STORE, fuselector_PROXY_CTRLN_8_i0_LOAD, fuselector_PROXY_CTRLN_8_i0_STORE, fuselector_PROXY_CTRLN_8_i1_LOAD, fuselector_PROXY_CTRLN_8_i1_STORE, fuselector_PROXY_CTRLN_9_i0_LOAD, fuselector_PROXY_CTRLN_9_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_23, wrenable_reg_24, wrenable_reg_25, wrenable_reg_26, wrenable_reg_27, wrenable_reg_28, wrenable_reg_29, wrenable_reg_3, wrenable_reg_30, wrenable_reg_31, wrenable_reg_32, wrenable_reg_33, wrenable_reg_34, wrenable_reg_35, wrenable_reg_36, wrenable_reg_37, wrenable_reg_38, wrenable_reg_39, wrenable_reg_4, wrenable_reg_40, wrenable_reg_41, wrenable_reg_42, wrenable_reg_43, wrenable_reg_44, wrenable_reg_45, wrenable_reg_46, wrenable_reg_47, wrenable_reg_48, wrenable_reg_49, wrenable_reg_5, wrenable_reg_50, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_kruskalF_28880_29856, OUT_CONDITION_kruskalF_28880_29870, OUT_CONDITION_kruskalF_28880_30083, OUT_CONDITION_kruskalF_28880_30098, OUT_CONDITION_kruskalF_28880_30104, OUT_CONDITION_kruskalF_28880_30109, OUT_MULTIIF_kruskalF_28880_30982, OUT_MULTIIF_kruskalF_28880_30989, clock, reset, start_port);
  // IN
  input OUT_CONDITION_kruskalF_28880_29856;
  input OUT_CONDITION_kruskalF_28880_29870;
  input OUT_CONDITION_kruskalF_28880_30083;
  input OUT_CONDITION_kruskalF_28880_30098;
  input OUT_CONDITION_kruskalF_28880_30104;
  input OUT_CONDITION_kruskalF_28880_30109;
  input [1:0] OUT_MULTIIF_kruskalF_28880_30982;
  input [1:0] OUT_MULTIIF_kruskalF_28880_30989;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE;
  output fuselector_BMEMORY_CTRLN_130_i0_LOAD;
  output fuselector_BMEMORY_CTRLN_130_i0_STORE;
  output selector_MUX_151_reg_13_0_0_0;
  output selector_MUX_152_reg_14_0_0_0;
  output selector_MUX_153_reg_15_0_0_0;
  output selector_MUX_157_reg_19_0_0_0;
  output selector_MUX_161_reg_22_0_0_0;
  output selector_MUX_165_reg_26_0_0_0;
  output selector_MUX_166_reg_27_0_0_0;
  output selector_MUX_167_reg_28_0_0_0;
  output selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0;
  output selector_MUX_175_reg_35_0_0_0;
  output selector_MUX_176_reg_36_0_0_0;
  output selector_MUX_177_reg_37_0_0_0;
  output selector_MUX_192_reg_50_0_0_0;
  output selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0;
  output selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0;
  output selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1;
  output selector_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0;
  output selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0;
  output selector_MUX_50_PROXY_CTRLN_7_i0_0_0_0;
  output selector_MUX_50_PROXY_CTRLN_7_i0_0_0_1;
  output selector_MUX_55_PROXY_CTRLN_8_i0_1_0_0;
  output selector_MUX_55_PROXY_CTRLN_8_i0_1_0_1;
  output selector_MUX_55_PROXY_CTRLN_8_i0_1_1_0;
  output selector_MUX_59_PROXY_CTRLN_8_i1_1_0_0;
  output selector_MUX_63_PROXY_CTRLN_9_i0_1_0_0;
  output selector_MUX_63_PROXY_CTRLN_9_i0_1_0_1;
  output fuselector_PROXY_CTRLN_6_i0_LOAD;
  output fuselector_PROXY_CTRLN_6_i0_STORE;
  output fuselector_PROXY_CTRLN_7_i0_LOAD;
  output fuselector_PROXY_CTRLN_7_i0_STORE;
  output fuselector_PROXY_CTRLN_8_i0_LOAD;
  output fuselector_PROXY_CTRLN_8_i0_STORE;
  output fuselector_PROXY_CTRLN_8_i1_LOAD;
  output fuselector_PROXY_CTRLN_8_i1_STORE;
  output fuselector_PROXY_CTRLN_9_i0_LOAD;
  output fuselector_PROXY_CTRLN_9_i0_STORE;
  output wrenable_reg_0;
  output wrenable_reg_1;
  output wrenable_reg_10;
  output wrenable_reg_11;
  output wrenable_reg_12;
  output wrenable_reg_13;
  output wrenable_reg_14;
  output wrenable_reg_15;
  output wrenable_reg_16;
  output wrenable_reg_17;
  output wrenable_reg_18;
  output wrenable_reg_19;
  output wrenable_reg_2;
  output wrenable_reg_20;
  output wrenable_reg_21;
  output wrenable_reg_22;
  output wrenable_reg_23;
  output wrenable_reg_24;
  output wrenable_reg_25;
  output wrenable_reg_26;
  output wrenable_reg_27;
  output wrenable_reg_28;
  output wrenable_reg_29;
  output wrenable_reg_3;
  output wrenable_reg_30;
  output wrenable_reg_31;
  output wrenable_reg_32;
  output wrenable_reg_33;
  output wrenable_reg_34;
  output wrenable_reg_35;
  output wrenable_reg_36;
  output wrenable_reg_37;
  output wrenable_reg_38;
  output wrenable_reg_39;
  output wrenable_reg_4;
  output wrenable_reg_40;
  output wrenable_reg_41;
  output wrenable_reg_42;
  output wrenable_reg_43;
  output wrenable_reg_44;
  output wrenable_reg_45;
  output wrenable_reg_46;
  output wrenable_reg_47;
  output wrenable_reg_48;
  output wrenable_reg_49;
  output wrenable_reg_5;
  output wrenable_reg_50;
  output wrenable_reg_6;
  output wrenable_reg_7;
  output wrenable_reg_8;
  output wrenable_reg_9;
  parameter [5:0] S_0 = 6'd0,
    S_1 = 6'd1,
    S_2 = 6'd2,
    S_3 = 6'd3,
    S_4 = 6'd4,
    S_5 = 6'd5,
    S_6 = 6'd6,
    S_7 = 6'd7,
    S_32 = 6'd32,
    S_8 = 6'd8,
    S_9 = 6'd9,
    S_10 = 6'd10,
    S_11 = 6'd11,
    S_12 = 6'd12,
    S_13 = 6'd13,
    S_14 = 6'd14,
    S_15 = 6'd15,
    S_16 = 6'd16,
    S_17 = 6'd17,
    S_25 = 6'd25,
    S_26 = 6'd26,
    S_27 = 6'd27,
    S_28 = 6'd28,
    S_29 = 6'd29,
    S_18 = 6'd18,
    S_19 = 6'd19,
    S_20 = 6'd20,
    S_21 = 6'd21,
    S_22 = 6'd22,
    S_23 = 6'd23,
    S_24 = 6'd24,
    S_30 = 6'd30,
    S_31 = 6'd31,
    S_33 = 6'd33;
  reg [5:0] _present_state, _next_state;
  reg done_port;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE;
  reg fuselector_BMEMORY_CTRLN_130_i0_LOAD;
  reg fuselector_BMEMORY_CTRLN_130_i0_STORE;
  reg selector_MUX_151_reg_13_0_0_0;
  reg selector_MUX_152_reg_14_0_0_0;
  reg selector_MUX_153_reg_15_0_0_0;
  reg selector_MUX_157_reg_19_0_0_0;
  reg selector_MUX_161_reg_22_0_0_0;
  reg selector_MUX_165_reg_26_0_0_0;
  reg selector_MUX_166_reg_27_0_0_0;
  reg selector_MUX_167_reg_28_0_0_0;
  reg selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0;
  reg selector_MUX_175_reg_35_0_0_0;
  reg selector_MUX_176_reg_36_0_0_0;
  reg selector_MUX_177_reg_37_0_0_0;
  reg selector_MUX_192_reg_50_0_0_0;
  reg selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0;
  reg selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0;
  reg selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1;
  reg selector_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0;
  reg selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0;
  reg selector_MUX_50_PROXY_CTRLN_7_i0_0_0_0;
  reg selector_MUX_50_PROXY_CTRLN_7_i0_0_0_1;
  reg selector_MUX_55_PROXY_CTRLN_8_i0_1_0_0;
  reg selector_MUX_55_PROXY_CTRLN_8_i0_1_0_1;
  reg selector_MUX_55_PROXY_CTRLN_8_i0_1_1_0;
  reg selector_MUX_59_PROXY_CTRLN_8_i1_1_0_0;
  reg selector_MUX_63_PROXY_CTRLN_9_i0_1_0_0;
  reg selector_MUX_63_PROXY_CTRLN_9_i0_1_0_1;
  reg fuselector_PROXY_CTRLN_6_i0_LOAD;
  reg fuselector_PROXY_CTRLN_6_i0_STORE;
  reg fuselector_PROXY_CTRLN_7_i0_LOAD;
  reg fuselector_PROXY_CTRLN_7_i0_STORE;
  reg fuselector_PROXY_CTRLN_8_i0_LOAD;
  reg fuselector_PROXY_CTRLN_8_i0_STORE;
  reg fuselector_PROXY_CTRLN_8_i1_LOAD;
  reg fuselector_PROXY_CTRLN_8_i1_STORE;
  reg fuselector_PROXY_CTRLN_9_i0_LOAD;
  reg fuselector_PROXY_CTRLN_9_i0_STORE;
  reg wrenable_reg_0;
  reg wrenable_reg_1;
  reg wrenable_reg_10;
  reg wrenable_reg_11;
  reg wrenable_reg_12;
  reg wrenable_reg_13;
  reg wrenable_reg_14;
  reg wrenable_reg_15;
  reg wrenable_reg_16;
  reg wrenable_reg_17;
  reg wrenable_reg_18;
  reg wrenable_reg_19;
  reg wrenable_reg_2;
  reg wrenable_reg_20;
  reg wrenable_reg_21;
  reg wrenable_reg_22;
  reg wrenable_reg_23;
  reg wrenable_reg_24;
  reg wrenable_reg_25;
  reg wrenable_reg_26;
  reg wrenable_reg_27;
  reg wrenable_reg_28;
  reg wrenable_reg_29;
  reg wrenable_reg_3;
  reg wrenable_reg_30;
  reg wrenable_reg_31;
  reg wrenable_reg_32;
  reg wrenable_reg_33;
  reg wrenable_reg_34;
  reg wrenable_reg_35;
  reg wrenable_reg_36;
  reg wrenable_reg_37;
  reg wrenable_reg_38;
  reg wrenable_reg_39;
  reg wrenable_reg_4;
  reg wrenable_reg_40;
  reg wrenable_reg_41;
  reg wrenable_reg_42;
  reg wrenable_reg_43;
  reg wrenable_reg_44;
  reg wrenable_reg_45;
  reg wrenable_reg_46;
  reg wrenable_reg_47;
  reg wrenable_reg_48;
  reg wrenable_reg_49;
  reg wrenable_reg_5;
  reg wrenable_reg_50;
  reg wrenable_reg_6;
  reg wrenable_reg_7;
  reg wrenable_reg_8;
  reg wrenable_reg_9;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_0;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE = 1'b0;
    fuselector_BMEMORY_CTRLN_130_i0_LOAD = 1'b0;
    fuselector_BMEMORY_CTRLN_130_i0_STORE = 1'b0;
    selector_MUX_151_reg_13_0_0_0 = 1'b0;
    selector_MUX_152_reg_14_0_0_0 = 1'b0;
    selector_MUX_153_reg_15_0_0_0 = 1'b0;
    selector_MUX_157_reg_19_0_0_0 = 1'b0;
    selector_MUX_161_reg_22_0_0_0 = 1'b0;
    selector_MUX_165_reg_26_0_0_0 = 1'b0;
    selector_MUX_166_reg_27_0_0_0 = 1'b0;
    selector_MUX_167_reg_28_0_0_0 = 1'b0;
    selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0 = 1'b0;
    selector_MUX_175_reg_35_0_0_0 = 1'b0;
    selector_MUX_176_reg_36_0_0_0 = 1'b0;
    selector_MUX_177_reg_37_0_0_0 = 1'b0;
    selector_MUX_192_reg_50_0_0_0 = 1'b0;
    selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0 = 1'b0;
    selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0 = 1'b0;
    selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1 = 1'b0;
    selector_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0 = 1'b0;
    selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0 = 1'b0;
    selector_MUX_50_PROXY_CTRLN_7_i0_0_0_0 = 1'b0;
    selector_MUX_50_PROXY_CTRLN_7_i0_0_0_1 = 1'b0;
    selector_MUX_55_PROXY_CTRLN_8_i0_1_0_0 = 1'b0;
    selector_MUX_55_PROXY_CTRLN_8_i0_1_0_1 = 1'b0;
    selector_MUX_55_PROXY_CTRLN_8_i0_1_1_0 = 1'b0;
    selector_MUX_59_PROXY_CTRLN_8_i1_1_0_0 = 1'b0;
    selector_MUX_63_PROXY_CTRLN_9_i0_1_0_0 = 1'b0;
    selector_MUX_63_PROXY_CTRLN_9_i0_1_0_1 = 1'b0;
    fuselector_PROXY_CTRLN_6_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_6_i0_STORE = 1'b0;
    fuselector_PROXY_CTRLN_7_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_7_i0_STORE = 1'b0;
    fuselector_PROXY_CTRLN_8_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_8_i0_STORE = 1'b0;
    fuselector_PROXY_CTRLN_8_i1_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_8_i1_STORE = 1'b0;
    fuselector_PROXY_CTRLN_9_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_9_i0_STORE = 1'b0;
    wrenable_reg_0 = 1'b0;
    wrenable_reg_1 = 1'b0;
    wrenable_reg_10 = 1'b0;
    wrenable_reg_11 = 1'b0;
    wrenable_reg_12 = 1'b0;
    wrenable_reg_13 = 1'b0;
    wrenable_reg_14 = 1'b0;
    wrenable_reg_15 = 1'b0;
    wrenable_reg_16 = 1'b0;
    wrenable_reg_17 = 1'b0;
    wrenable_reg_18 = 1'b0;
    wrenable_reg_19 = 1'b0;
    wrenable_reg_2 = 1'b0;
    wrenable_reg_20 = 1'b0;
    wrenable_reg_21 = 1'b0;
    wrenable_reg_22 = 1'b0;
    wrenable_reg_23 = 1'b0;
    wrenable_reg_24 = 1'b0;
    wrenable_reg_25 = 1'b0;
    wrenable_reg_26 = 1'b0;
    wrenable_reg_27 = 1'b0;
    wrenable_reg_28 = 1'b0;
    wrenable_reg_29 = 1'b0;
    wrenable_reg_3 = 1'b0;
    wrenable_reg_30 = 1'b0;
    wrenable_reg_31 = 1'b0;
    wrenable_reg_32 = 1'b0;
    wrenable_reg_33 = 1'b0;
    wrenable_reg_34 = 1'b0;
    wrenable_reg_35 = 1'b0;
    wrenable_reg_36 = 1'b0;
    wrenable_reg_37 = 1'b0;
    wrenable_reg_38 = 1'b0;
    wrenable_reg_39 = 1'b0;
    wrenable_reg_4 = 1'b0;
    wrenable_reg_40 = 1'b0;
    wrenable_reg_41 = 1'b0;
    wrenable_reg_42 = 1'b0;
    wrenable_reg_43 = 1'b0;
    wrenable_reg_44 = 1'b0;
    wrenable_reg_45 = 1'b0;
    wrenable_reg_46 = 1'b0;
    wrenable_reg_47 = 1'b0;
    wrenable_reg_48 = 1'b0;
    wrenable_reg_49 = 1'b0;
    wrenable_reg_5 = 1'b0;
    wrenable_reg_50 = 1'b0;
    wrenable_reg_6 = 1'b0;
    wrenable_reg_7 = 1'b0;
    wrenable_reg_8 = 1'b0;
    wrenable_reg_9 = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_10 = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_12 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_3 = 1'b1;
          wrenable_reg_4 = 1'b1;
          wrenable_reg_5 = 1'b1;
          wrenable_reg_6 = 1'b1;
          wrenable_reg_7 = 1'b1;
          wrenable_reg_8 = 1'b1;
          wrenable_reg_9 = 1'b1;
          _next_state = S_1;
        end
        else
        begin
          selector_MUX_151_reg_13_0_0_0 = 1'bX;
          selector_MUX_152_reg_14_0_0_0 = 1'bX;
          selector_MUX_153_reg_15_0_0_0 = 1'bX;
          selector_MUX_157_reg_19_0_0_0 = 1'bX;
          selector_MUX_161_reg_22_0_0_0 = 1'bX;
          selector_MUX_165_reg_26_0_0_0 = 1'bX;
          selector_MUX_166_reg_27_0_0_0 = 1'bX;
          selector_MUX_167_reg_28_0_0_0 = 1'bX;
          selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0 = 1'bX;
          selector_MUX_175_reg_35_0_0_0 = 1'bX;
          selector_MUX_176_reg_36_0_0_0 = 1'bX;
          selector_MUX_177_reg_37_0_0_0 = 1'bX;
          selector_MUX_192_reg_50_0_0_0 = 1'bX;
          selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0 = 1'bX;
          selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0 = 1'bX;
          selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1 = 1'bX;
          selector_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0 = 1'bX;
          selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0 = 1'bX;
          selector_MUX_50_PROXY_CTRLN_7_i0_0_0_0 = 1'bX;
          selector_MUX_50_PROXY_CTRLN_7_i0_0_0_1 = 1'bX;
          selector_MUX_55_PROXY_CTRLN_8_i0_1_0_0 = 1'bX;
          selector_MUX_55_PROXY_CTRLN_8_i0_1_0_1 = 1'bX;
          selector_MUX_55_PROXY_CTRLN_8_i0_1_1_0 = 1'bX;
          selector_MUX_59_PROXY_CTRLN_8_i1_1_0_0 = 1'bX;
          selector_MUX_63_PROXY_CTRLN_9_i0_1_0_0 = 1'bX;
          selector_MUX_63_PROXY_CTRLN_9_i0_1_0_1 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_10 = 1'bX;
          wrenable_reg_11 = 1'bX;
          wrenable_reg_12 = 1'bX;
          wrenable_reg_13 = 1'bX;
          wrenable_reg_14 = 1'bX;
          wrenable_reg_15 = 1'bX;
          wrenable_reg_16 = 1'bX;
          wrenable_reg_17 = 1'bX;
          wrenable_reg_18 = 1'bX;
          wrenable_reg_19 = 1'bX;
          wrenable_reg_2 = 1'bX;
          wrenable_reg_20 = 1'bX;
          wrenable_reg_21 = 1'bX;
          wrenable_reg_22 = 1'bX;
          wrenable_reg_23 = 1'bX;
          wrenable_reg_24 = 1'bX;
          wrenable_reg_25 = 1'bX;
          wrenable_reg_26 = 1'bX;
          wrenable_reg_27 = 1'bX;
          wrenable_reg_28 = 1'bX;
          wrenable_reg_29 = 1'bX;
          wrenable_reg_3 = 1'bX;
          wrenable_reg_30 = 1'bX;
          wrenable_reg_31 = 1'bX;
          wrenable_reg_32 = 1'bX;
          wrenable_reg_33 = 1'bX;
          wrenable_reg_34 = 1'bX;
          wrenable_reg_35 = 1'bX;
          wrenable_reg_36 = 1'bX;
          wrenable_reg_37 = 1'bX;
          wrenable_reg_38 = 1'bX;
          wrenable_reg_39 = 1'bX;
          wrenable_reg_4 = 1'bX;
          wrenable_reg_40 = 1'bX;
          wrenable_reg_41 = 1'bX;
          wrenable_reg_42 = 1'bX;
          wrenable_reg_43 = 1'bX;
          wrenable_reg_44 = 1'bX;
          wrenable_reg_45 = 1'bX;
          wrenable_reg_46 = 1'bX;
          wrenable_reg_47 = 1'bX;
          wrenable_reg_48 = 1'bX;
          wrenable_reg_49 = 1'bX;
          wrenable_reg_5 = 1'bX;
          wrenable_reg_50 = 1'bX;
          wrenable_reg_6 = 1'bX;
          wrenable_reg_7 = 1'bX;
          wrenable_reg_8 = 1'bX;
          wrenable_reg_9 = 1'bX;
          _next_state = S_0;
        end
      S_1 :
        begin
          selector_MUX_151_reg_13_0_0_0 = 1'b1;
          selector_MUX_152_reg_14_0_0_0 = 1'b1;
          selector_MUX_153_reg_15_0_0_0 = 1'b1;
          wrenable_reg_13 = 1'b1;
          wrenable_reg_14 = 1'b1;
          wrenable_reg_15 = 1'b1;
          _next_state = S_2;
        end
      S_2 :
        begin
          selector_MUX_157_reg_19_0_0_0 = 1'b1;
          wrenable_reg_15 = 1'b1;
          wrenable_reg_16 = 1'b1;
          wrenable_reg_17 = 1'b1;
          wrenable_reg_19 = 1'b1;
          _next_state = S_3;
        end
      S_3 :
        begin
          selector_MUX_63_PROXY_CTRLN_9_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_9_i0_LOAD = 1'b1;
          wrenable_reg_18 = 1'b1;
          wrenable_reg_19 = 1'b1;
          wrenable_reg_20 = 1'b1;
          wrenable_reg_21 = 1'b1;
          _next_state = S_4;
        end
      S_4 :
        begin
          wrenable_reg_13 = 1'b1;
          wrenable_reg_14 = 1'b1;
          if (OUT_MULTIIF_kruskalF_28880_30982[0] == 1'b1)
            begin
              _next_state = S_3;
            end
          else if (OUT_MULTIIF_kruskalF_28880_30982[1] == 1'b1)
            begin
              _next_state = S_2;
            end
          else
            begin
              _next_state = S_5;
            end
        end
      S_5 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE = 1'b1;
          selector_MUX_161_reg_22_0_0_0 = 1'b1;
          selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_6_i0_STORE = 1'b1;
          fuselector_PROXY_CTRLN_7_i0_STORE = 1'b1;
          wrenable_reg_22 = 1'b1;
          wrenable_reg_23 = 1'b1;
          _next_state = S_6;
        end
      S_6 :
        begin
          selector_MUX_59_PROXY_CTRLN_8_i1_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_8_i1_STORE = 1'b1;
          wrenable_reg_22 = 1'b1;
          if (OUT_CONDITION_kruskalF_28880_29856 == 1'b1)
            begin
              _next_state = S_6;
            end
          else
            begin
              _next_state = S_7;
              wrenable_reg_22 = 1'b0;
            end
        end
      S_7 :
        begin
          selector_MUX_50_PROXY_CTRLN_7_i0_0_0_1 = 1'b1;
          fuselector_PROXY_CTRLN_7_i0_STORE = 1'b1;
          if (OUT_CONDITION_kruskalF_28880_29870 == 1'b1)
            begin
              _next_state = S_8;
            end
          else
            begin
              _next_state = S_32;
              done_port = 1'b1;
            end
        end
      S_32 :
        begin
          _next_state = S_0;
        end
      S_8 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD = 1'b1;
          _next_state = S_9;
        end
      S_9 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD = 1'b1;
          wrenable_reg_24 = 1'b1;
          wrenable_reg_25 = 1'b1;
          _next_state = S_10;
        end
      S_10 :
        begin
          selector_MUX_167_reg_28_0_0_0 = 1'b1;
          selector_MUX_175_reg_35_0_0_0 = 1'b1;
          selector_MUX_176_reg_36_0_0_0 = 1'b1;
          selector_MUX_177_reg_37_0_0_0 = 1'b1;
          wrenable_reg_28 = 1'b1;
          wrenable_reg_35 = 1'b1;
          wrenable_reg_36 = 1'b1;
          wrenable_reg_37 = 1'b1;
          _next_state = S_11;
        end
      S_11 :
        begin
          selector_MUX_166_reg_27_0_0_0 = 1'b1;
          wrenable_reg_26 = 1'b1;
          wrenable_reg_27 = 1'b1;
          wrenable_reg_28 = 1'b1;
          wrenable_reg_29 = 1'b1;
          wrenable_reg_30 = 1'b1;
          wrenable_reg_31 = 1'b1;
          _next_state = S_12;
        end
      S_12 :
        begin
          fuselector_PROXY_CTRLN_9_i0_LOAD = 1'b1;
          wrenable_reg_32 = 1'b1;
          wrenable_reg_33 = 1'b1;
          wrenable_reg_34 = 1'b1;
          _next_state = S_13;
        end
      S_13 :
        begin
          selector_MUX_165_reg_26_0_0_0 = 1'b1;
          wrenable_reg_26 = 1'b1;
          wrenable_reg_27 = 1'b1;
          wrenable_reg_35 = 1'b1;
          wrenable_reg_36 = 1'b1;
          wrenable_reg_37 = 1'b1;
          if (OUT_MULTIIF_kruskalF_28880_30989[0] == 1'b1)
            begin
              _next_state = S_12;
            end
          else if (OUT_MULTIIF_kruskalF_28880_30989[1] == 1'b1)
            begin
              _next_state = S_11;
              selector_MUX_165_reg_26_0_0_0 = 1'b0;
              wrenable_reg_26 = 1'b0;
              wrenable_reg_27 = 1'b0;
            end
          else
            begin
              _next_state = S_14;
              selector_MUX_165_reg_26_0_0_0 = 1'b0;
              wrenable_reg_26 = 1'b0;
              wrenable_reg_27 = 1'b0;
            end
        end
      S_14 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE = 1'b1;
          selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0 = 1'b1;
          selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0 = 1'b1;
          _next_state = S_15;
        end
      S_15 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD = 1'b1;
          _next_state = S_16;
        end
      S_16 :
        begin
          fuselector_PROXY_CTRLN_8_i0_LOAD = 1'b1;
          fuselector_PROXY_CTRLN_8_i1_LOAD = 1'b1;
          wrenable_reg_38 = 1'b1;
          wrenable_reg_39 = 1'b1;
          wrenable_reg_40 = 1'b1;
          wrenable_reg_41 = 1'b1;
          wrenable_reg_42 = 1'b1;
          wrenable_reg_43 = 1'b1;
          _next_state = S_17;
        end
      S_17 :
        begin
          selector_MUX_63_PROXY_CTRLN_9_i0_1_0_1 = 1'b1;
          fuselector_PROXY_CTRLN_9_i0_STORE = 1'b1;
          wrenable_reg_47 = 1'b1;
          wrenable_reg_48 = 1'b1;
          if (OUT_CONDITION_kruskalF_28880_30083 == 1'b1)
            begin
              _next_state = S_18;
            end
          else
            begin
              _next_state = S_25;
              wrenable_reg_47 = 1'b0;
              wrenable_reg_48 = 1'b0;
            end
        end
      S_25 :
        begin
          wrenable_reg_44 = 1'b1;
          _next_state = S_26;
        end
      S_26 :
        begin
          fuselector_BMEMORY_CTRLN_130_i0_STORE = 1'b1;
          selector_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0 = 1'b1;
          _next_state = S_27;
        end
      S_27 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD = 1'b1;
          _next_state = S_28;
        end
      S_28 :
        begin
          wrenable_reg_45 = 1'b1;
          wrenable_reg_46 = 1'b1;
          _next_state = S_29;
        end
      S_29 :
        begin
          fuselector_BMEMORY_CTRLN_130_i0_STORE = 1'b1;
          _next_state = S_30;
        end
      S_18 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE = 1'b1;
          selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0 = 1'b1;
          selector_MUX_192_reg_50_0_0_0 = 1'b1;
          selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1 = 1'b1;
          wrenable_reg_50 = 1'b1;
          _next_state = S_19;
        end
      S_19 :
        begin
          selector_MUX_55_PROXY_CTRLN_8_i0_1_0_1 = 1'b1;
          fuselector_PROXY_CTRLN_8_i0_LOAD = 1'b1;
          wrenable_reg_49 = 1'b1;
          wrenable_reg_50 = 1'b1;
          _next_state = S_20;
        end
      S_20 :
        begin
          if (OUT_CONDITION_kruskalF_28880_30098 == 1'b1)
            begin
              _next_state = S_21;
            end
          else
            begin
              _next_state = S_23;
            end
        end
      S_21 :
        begin
          selector_MUX_55_PROXY_CTRLN_8_i0_1_1_0 = 1'b1;
          fuselector_PROXY_CTRLN_8_i0_LOAD = 1'b1;
          _next_state = S_22;
        end
      S_22 :
        begin
          selector_MUX_55_PROXY_CTRLN_8_i0_1_0_0 = 1'b1;
          selector_MUX_55_PROXY_CTRLN_8_i0_1_1_0 = 1'b1;
          fuselector_PROXY_CTRLN_8_i0_STORE = 1'b1;
          _next_state = S_23;
        end
      S_23 :
        begin
          if (OUT_CONDITION_kruskalF_28880_30104 == 1'b1)
            begin
              _next_state = S_19;
            end
          else
            begin
              _next_state = S_24;
            end
        end
      S_24 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE = 1'b1;
          _next_state = S_30;
        end
      S_30 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD = 1'b1;
          selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_7_i0_LOAD = 1'b1;
          _next_state = S_31;
        end
      S_31 :
        begin
          selector_MUX_50_PROXY_CTRLN_7_i0_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_7_i0_STORE = 1'b1;
          if (OUT_CONDITION_kruskalF_28880_30109 == 1'b1)
            begin
              _next_state = S_8;
            end
          else
            begin
              _next_state = S_33;
              done_port = 1'b1;
            end
        end
      S_33 :
        begin
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_151_reg_13_0_0_0 = 1'bX;
          selector_MUX_152_reg_14_0_0_0 = 1'bX;
          selector_MUX_153_reg_15_0_0_0 = 1'bX;
          selector_MUX_157_reg_19_0_0_0 = 1'bX;
          selector_MUX_161_reg_22_0_0_0 = 1'bX;
          selector_MUX_165_reg_26_0_0_0 = 1'bX;
          selector_MUX_166_reg_27_0_0_0 = 1'bX;
          selector_MUX_167_reg_28_0_0_0 = 1'bX;
          selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0 = 1'bX;
          selector_MUX_175_reg_35_0_0_0 = 1'bX;
          selector_MUX_176_reg_36_0_0_0 = 1'bX;
          selector_MUX_177_reg_37_0_0_0 = 1'bX;
          selector_MUX_192_reg_50_0_0_0 = 1'bX;
          selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0 = 1'bX;
          selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0 = 1'bX;
          selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1 = 1'bX;
          selector_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0 = 1'bX;
          selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0 = 1'bX;
          selector_MUX_50_PROXY_CTRLN_7_i0_0_0_0 = 1'bX;
          selector_MUX_50_PROXY_CTRLN_7_i0_0_0_1 = 1'bX;
          selector_MUX_55_PROXY_CTRLN_8_i0_1_0_0 = 1'bX;
          selector_MUX_55_PROXY_CTRLN_8_i0_1_0_1 = 1'bX;
          selector_MUX_55_PROXY_CTRLN_8_i0_1_1_0 = 1'bX;
          selector_MUX_59_PROXY_CTRLN_8_i1_1_0_0 = 1'bX;
          selector_MUX_63_PROXY_CTRLN_9_i0_1_0_0 = 1'bX;
          selector_MUX_63_PROXY_CTRLN_9_i0_1_0_1 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_10 = 1'bX;
          wrenable_reg_11 = 1'bX;
          wrenable_reg_12 = 1'bX;
          wrenable_reg_13 = 1'bX;
          wrenable_reg_14 = 1'bX;
          wrenable_reg_15 = 1'bX;
          wrenable_reg_16 = 1'bX;
          wrenable_reg_17 = 1'bX;
          wrenable_reg_18 = 1'bX;
          wrenable_reg_19 = 1'bX;
          wrenable_reg_2 = 1'bX;
          wrenable_reg_20 = 1'bX;
          wrenable_reg_21 = 1'bX;
          wrenable_reg_22 = 1'bX;
          wrenable_reg_23 = 1'bX;
          wrenable_reg_24 = 1'bX;
          wrenable_reg_25 = 1'bX;
          wrenable_reg_26 = 1'bX;
          wrenable_reg_27 = 1'bX;
          wrenable_reg_28 = 1'bX;
          wrenable_reg_29 = 1'bX;
          wrenable_reg_3 = 1'bX;
          wrenable_reg_30 = 1'bX;
          wrenable_reg_31 = 1'bX;
          wrenable_reg_32 = 1'bX;
          wrenable_reg_33 = 1'bX;
          wrenable_reg_34 = 1'bX;
          wrenable_reg_35 = 1'bX;
          wrenable_reg_36 = 1'bX;
          wrenable_reg_37 = 1'bX;
          wrenable_reg_38 = 1'bX;
          wrenable_reg_39 = 1'bX;
          wrenable_reg_4 = 1'bX;
          wrenable_reg_40 = 1'bX;
          wrenable_reg_41 = 1'bX;
          wrenable_reg_42 = 1'bX;
          wrenable_reg_43 = 1'bX;
          wrenable_reg_44 = 1'bX;
          wrenable_reg_45 = 1'bX;
          wrenable_reg_46 = 1'bX;
          wrenable_reg_47 = 1'bX;
          wrenable_reg_48 = 1'bX;
          wrenable_reg_49 = 1'bX;
          wrenable_reg_5 = 1'bX;
          wrenable_reg_50 = 1'bX;
          wrenable_reg_6 = 1'bX;
          wrenable_reg_7 = 1'bX;
          wrenable_reg_8 = 1'bX;
          wrenable_reg_9 = 1'bX;
        end
    endcase
  end
endmodule

// Top component for kruskalF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module kruskalF(clock, reset, start_port, done_port, a, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, proxy_out1_28867, proxy_out1_28868, proxy_out1_28869, proxy_out1_28870, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Sout_Rdata_ram, Sout_DataRdy, proxy_in1_28867, proxy_in2_28867, proxy_in3_28867, proxy_sel_LOAD_28867, proxy_sel_STORE_28867, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, proxy_in1_28869, proxy_in2_28869, proxy_in3_28869, proxy_sel_LOAD_28869, proxy_sel_STORE_28869, proxy_in1_28870, proxy_in2_28870, proxy_in3_28870, proxy_sel_LOAD_28870, proxy_sel_STORE_28870, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size);
  parameter MEM_var_28859_28880=5120, MEM_var_28861_28880=6144, MEM_var_28862_28880=7168, MEM_var_28864_28880=8192, MEM_var_28865_28880=9216, MEM_var_28866_28880=10240, MEM_var_28867_28882=1024, MEM_var_28868_28882=2048, MEM_var_28869_28882=3072, MEM_var_28870_28882=4096;
  // IN
  input clock;
  input reset;
  input start_port;
  input [31:0] a;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [27:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [15:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [15:0] proxy_out1_28867;
  input [15:0] proxy_out1_28868;
  input [15:0] proxy_out1_28869;
  input [15:0] proxy_out1_28870;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [27:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  // OUT
  output done_port;
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [15:0] proxy_in1_28867;
  output [27:0] proxy_in2_28867;
  output [7:0] proxy_in3_28867;
  output [1:0] proxy_sel_LOAD_28867;
  output [1:0] proxy_sel_STORE_28867;
  output [15:0] proxy_in1_28868;
  output [27:0] proxy_in2_28868;
  output [7:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output [15:0] proxy_in1_28869;
  output [27:0] proxy_in2_28869;
  output [7:0] proxy_in3_28869;
  output [1:0] proxy_sel_LOAD_28869;
  output [1:0] proxy_sel_STORE_28869;
  output [15:0] proxy_in1_28870;
  output [27:0] proxy_in2_28870;
  output [7:0] proxy_in3_28870;
  output [1:0] proxy_sel_LOAD_28870;
  output [1:0] proxy_sel_STORE_28870;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [27:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  // Component and signal declarations
  wire OUT_CONDITION_kruskalF_28880_29856;
  wire OUT_CONDITION_kruskalF_28880_29870;
  wire OUT_CONDITION_kruskalF_28880_30083;
  wire OUT_CONDITION_kruskalF_28880_30098;
  wire OUT_CONDITION_kruskalF_28880_30104;
  wire OUT_CONDITION_kruskalF_28880_30109;
  wire [1:0] OUT_MULTIIF_kruskalF_28880_30982;
  wire [1:0] OUT_MULTIIF_kruskalF_28880_30989;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE;
  wire fuselector_BMEMORY_CTRLN_130_i0_LOAD;
  wire fuselector_BMEMORY_CTRLN_130_i0_STORE;
  wire fuselector_PROXY_CTRLN_6_i0_LOAD;
  wire fuselector_PROXY_CTRLN_6_i0_STORE;
  wire fuselector_PROXY_CTRLN_7_i0_LOAD;
  wire fuselector_PROXY_CTRLN_7_i0_STORE;
  wire fuselector_PROXY_CTRLN_8_i0_LOAD;
  wire fuselector_PROXY_CTRLN_8_i0_STORE;
  wire fuselector_PROXY_CTRLN_8_i1_LOAD;
  wire fuselector_PROXY_CTRLN_8_i1_STORE;
  wire fuselector_PROXY_CTRLN_9_i0_LOAD;
  wire fuselector_PROXY_CTRLN_9_i0_STORE;
  wire selector_MUX_151_reg_13_0_0_0;
  wire selector_MUX_152_reg_14_0_0_0;
  wire selector_MUX_153_reg_15_0_0_0;
  wire selector_MUX_157_reg_19_0_0_0;
  wire selector_MUX_161_reg_22_0_0_0;
  wire selector_MUX_165_reg_26_0_0_0;
  wire selector_MUX_166_reg_27_0_0_0;
  wire selector_MUX_167_reg_28_0_0_0;
  wire selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0;
  wire selector_MUX_175_reg_35_0_0_0;
  wire selector_MUX_176_reg_36_0_0_0;
  wire selector_MUX_177_reg_37_0_0_0;
  wire selector_MUX_192_reg_50_0_0_0;
  wire selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0;
  wire selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0;
  wire selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1;
  wire selector_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0;
  wire selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0;
  wire selector_MUX_50_PROXY_CTRLN_7_i0_0_0_0;
  wire selector_MUX_50_PROXY_CTRLN_7_i0_0_0_1;
  wire selector_MUX_55_PROXY_CTRLN_8_i0_1_0_0;
  wire selector_MUX_55_PROXY_CTRLN_8_i0_1_0_1;
  wire selector_MUX_55_PROXY_CTRLN_8_i0_1_1_0;
  wire selector_MUX_59_PROXY_CTRLN_8_i1_1_0_0;
  wire selector_MUX_63_PROXY_CTRLN_9_i0_1_0_0;
  wire selector_MUX_63_PROXY_CTRLN_9_i0_1_0_1;
  wire wrenable_reg_0;
  wire wrenable_reg_1;
  wire wrenable_reg_10;
  wire wrenable_reg_11;
  wire wrenable_reg_12;
  wire wrenable_reg_13;
  wire wrenable_reg_14;
  wire wrenable_reg_15;
  wire wrenable_reg_16;
  wire wrenable_reg_17;
  wire wrenable_reg_18;
  wire wrenable_reg_19;
  wire wrenable_reg_2;
  wire wrenable_reg_20;
  wire wrenable_reg_21;
  wire wrenable_reg_22;
  wire wrenable_reg_23;
  wire wrenable_reg_24;
  wire wrenable_reg_25;
  wire wrenable_reg_26;
  wire wrenable_reg_27;
  wire wrenable_reg_28;
  wire wrenable_reg_29;
  wire wrenable_reg_3;
  wire wrenable_reg_30;
  wire wrenable_reg_31;
  wire wrenable_reg_32;
  wire wrenable_reg_33;
  wire wrenable_reg_34;
  wire wrenable_reg_35;
  wire wrenable_reg_36;
  wire wrenable_reg_37;
  wire wrenable_reg_38;
  wire wrenable_reg_39;
  wire wrenable_reg_4;
  wire wrenable_reg_40;
  wire wrenable_reg_41;
  wire wrenable_reg_42;
  wire wrenable_reg_43;
  wire wrenable_reg_44;
  wire wrenable_reg_45;
  wire wrenable_reg_46;
  wire wrenable_reg_47;
  wire wrenable_reg_48;
  wire wrenable_reg_49;
  wire wrenable_reg_5;
  wire wrenable_reg_50;
  wire wrenable_reg_6;
  wire wrenable_reg_7;
  wire wrenable_reg_8;
  wire wrenable_reg_9;
  
  controller_kruskalF Controller_i (.done_port(done_delayed_REG_signal_in), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE), .fuselector_BMEMORY_CTRLN_130_i0_LOAD(fuselector_BMEMORY_CTRLN_130_i0_LOAD), .fuselector_BMEMORY_CTRLN_130_i0_STORE(fuselector_BMEMORY_CTRLN_130_i0_STORE), .selector_MUX_151_reg_13_0_0_0(selector_MUX_151_reg_13_0_0_0), .selector_MUX_152_reg_14_0_0_0(selector_MUX_152_reg_14_0_0_0), .selector_MUX_153_reg_15_0_0_0(selector_MUX_153_reg_15_0_0_0), .selector_MUX_157_reg_19_0_0_0(selector_MUX_157_reg_19_0_0_0), .selector_MUX_161_reg_22_0_0_0(selector_MUX_161_reg_22_0_0_0), .selector_MUX_165_reg_26_0_0_0(selector_MUX_165_reg_26_0_0_0), .selector_MUX_166_reg_27_0_0_0(selector_MUX_166_reg_27_0_0_0), .selector_MUX_167_reg_28_0_0_0(selector_MUX_167_reg_28_0_0_0), .selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0(selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0), .selector_MUX_175_reg_35_0_0_0(selector_MUX_175_reg_35_0_0_0), .selector_MUX_176_reg_36_0_0_0(selector_MUX_176_reg_36_0_0_0), .selector_MUX_177_reg_37_0_0_0(selector_MUX_177_reg_37_0_0_0), .selector_MUX_192_reg_50_0_0_0(selector_MUX_192_reg_50_0_0_0), .selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0(selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0), .selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0(selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0), .selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1(selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1), .selector_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0(selector_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0), .selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0(selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0), .selector_MUX_50_PROXY_CTRLN_7_i0_0_0_0(selector_MUX_50_PROXY_CTRLN_7_i0_0_0_0), .selector_MUX_50_PROXY_CTRLN_7_i0_0_0_1(selector_MUX_50_PROXY_CTRLN_7_i0_0_0_1), .selector_MUX_55_PROXY_CTRLN_8_i0_1_0_0(selector_MUX_55_PROXY_CTRLN_8_i0_1_0_0), .selector_MUX_55_PROXY_CTRLN_8_i0_1_0_1(selector_MUX_55_PROXY_CTRLN_8_i0_1_0_1), .selector_MUX_55_PROXY_CTRLN_8_i0_1_1_0(selector_MUX_55_PROXY_CTRLN_8_i0_1_1_0), .selector_MUX_59_PROXY_CTRLN_8_i1_1_0_0(selector_MUX_59_PROXY_CTRLN_8_i1_1_0_0), .selector_MUX_63_PROXY_CTRLN_9_i0_1_0_0(selector_MUX_63_PROXY_CTRLN_9_i0_1_0_0), .selector_MUX_63_PROXY_CTRLN_9_i0_1_0_1(selector_MUX_63_PROXY_CTRLN_9_i0_1_0_1), .fuselector_PROXY_CTRLN_6_i0_LOAD(fuselector_PROXY_CTRLN_6_i0_LOAD), .fuselector_PROXY_CTRLN_6_i0_STORE(fuselector_PROXY_CTRLN_6_i0_STORE), .fuselector_PROXY_CTRLN_7_i0_LOAD(fuselector_PROXY_CTRLN_7_i0_LOAD), .fuselector_PROXY_CTRLN_7_i0_STORE(fuselector_PROXY_CTRLN_7_i0_STORE), .fuselector_PROXY_CTRLN_8_i0_LOAD(fuselector_PROXY_CTRLN_8_i0_LOAD), .fuselector_PROXY_CTRLN_8_i0_STORE(fuselector_PROXY_CTRLN_8_i0_STORE), .fuselector_PROXY_CTRLN_8_i1_LOAD(fuselector_PROXY_CTRLN_8_i1_LOAD), .fuselector_PROXY_CTRLN_8_i1_STORE(fuselector_PROXY_CTRLN_8_i1_STORE), .fuselector_PROXY_CTRLN_9_i0_LOAD(fuselector_PROXY_CTRLN_9_i0_LOAD), .fuselector_PROXY_CTRLN_9_i0_STORE(fuselector_PROXY_CTRLN_9_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_23(wrenable_reg_23), .wrenable_reg_24(wrenable_reg_24), .wrenable_reg_25(wrenable_reg_25), .wrenable_reg_26(wrenable_reg_26), .wrenable_reg_27(wrenable_reg_27), .wrenable_reg_28(wrenable_reg_28), .wrenable_reg_29(wrenable_reg_29), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_30(wrenable_reg_30), .wrenable_reg_31(wrenable_reg_31), .wrenable_reg_32(wrenable_reg_32), .wrenable_reg_33(wrenable_reg_33), .wrenable_reg_34(wrenable_reg_34), .wrenable_reg_35(wrenable_reg_35), .wrenable_reg_36(wrenable_reg_36), .wrenable_reg_37(wrenable_reg_37), .wrenable_reg_38(wrenable_reg_38), .wrenable_reg_39(wrenable_reg_39), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_40(wrenable_reg_40), .wrenable_reg_41(wrenable_reg_41), .wrenable_reg_42(wrenable_reg_42), .wrenable_reg_43(wrenable_reg_43), .wrenable_reg_44(wrenable_reg_44), .wrenable_reg_45(wrenable_reg_45), .wrenable_reg_46(wrenable_reg_46), .wrenable_reg_47(wrenable_reg_47), .wrenable_reg_48(wrenable_reg_48), .wrenable_reg_49(wrenable_reg_49), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_50(wrenable_reg_50), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_CONDITION_kruskalF_28880_29856(OUT_CONDITION_kruskalF_28880_29856), .OUT_CONDITION_kruskalF_28880_29870(OUT_CONDITION_kruskalF_28880_29870), .OUT_CONDITION_kruskalF_28880_30083(OUT_CONDITION_kruskalF_28880_30083), .OUT_CONDITION_kruskalF_28880_30098(OUT_CONDITION_kruskalF_28880_30098), .OUT_CONDITION_kruskalF_28880_30104(OUT_CONDITION_kruskalF_28880_30104), .OUT_CONDITION_kruskalF_28880_30109(OUT_CONDITION_kruskalF_28880_30109), .OUT_MULTIIF_kruskalF_28880_30982(OUT_MULTIIF_kruskalF_28880_30982), .OUT_MULTIIF_kruskalF_28880_30989(OUT_MULTIIF_kruskalF_28880_30989), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_kruskalF #(.MEM_var_28859_28880(MEM_var_28859_28880), .MEM_var_28861_28880(MEM_var_28861_28880), .MEM_var_28862_28880(MEM_var_28862_28880), .MEM_var_28864_28880(MEM_var_28864_28880), .MEM_var_28865_28880(MEM_var_28865_28880), .MEM_var_28866_28880(MEM_var_28866_28880), .MEM_var_28867_28882(MEM_var_28867_28882), .MEM_var_28868_28882(MEM_var_28868_28882), .MEM_var_28869_28882(MEM_var_28869_28882), .MEM_var_28870_28882(MEM_var_28870_28882)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .proxy_in1_28867(proxy_in1_28867), .proxy_in2_28867(proxy_in2_28867), .proxy_in3_28867(proxy_in3_28867), .proxy_sel_LOAD_28867(proxy_sel_LOAD_28867), .proxy_sel_STORE_28867(proxy_sel_STORE_28867), .proxy_in1_28868(proxy_in1_28868), .proxy_in2_28868(proxy_in2_28868), .proxy_in3_28868(proxy_in3_28868), .proxy_sel_LOAD_28868(proxy_sel_LOAD_28868), .proxy_sel_STORE_28868(proxy_sel_STORE_28868), .proxy_in1_28869(proxy_in1_28869), .proxy_in2_28869(proxy_in2_28869), .proxy_in3_28869(proxy_in3_28869), .proxy_sel_LOAD_28869(proxy_sel_LOAD_28869), .proxy_sel_STORE_28869(proxy_sel_STORE_28869), .proxy_in1_28870(proxy_in1_28870), .proxy_in2_28870(proxy_in2_28870), .proxy_in3_28870(proxy_in3_28870), .proxy_sel_LOAD_28870(proxy_sel_LOAD_28870), .proxy_sel_STORE_28870(proxy_sel_STORE_28870), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .OUT_CONDITION_kruskalF_28880_29856(OUT_CONDITION_kruskalF_28880_29856), .OUT_CONDITION_kruskalF_28880_29870(OUT_CONDITION_kruskalF_28880_29870), .OUT_CONDITION_kruskalF_28880_30083(OUT_CONDITION_kruskalF_28880_30083), .OUT_CONDITION_kruskalF_28880_30098(OUT_CONDITION_kruskalF_28880_30098), .OUT_CONDITION_kruskalF_28880_30104(OUT_CONDITION_kruskalF_28880_30104), .OUT_CONDITION_kruskalF_28880_30109(OUT_CONDITION_kruskalF_28880_30109), .OUT_MULTIIF_kruskalF_28880_30982(OUT_MULTIIF_kruskalF_28880_30982), .OUT_MULTIIF_kruskalF_28880_30989(OUT_MULTIIF_kruskalF_28880_30989), .clock(clock), .reset(reset), .in_port_a(a), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28867(proxy_out1_28867), .proxy_out1_28868(proxy_out1_28868), .proxy_out1_28869(proxy_out1_28869), .proxy_out1_28870(proxy_out1_28870), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE), .fuselector_BMEMORY_CTRLN_130_i0_LOAD(fuselector_BMEMORY_CTRLN_130_i0_LOAD), .fuselector_BMEMORY_CTRLN_130_i0_STORE(fuselector_BMEMORY_CTRLN_130_i0_STORE), .selector_MUX_151_reg_13_0_0_0(selector_MUX_151_reg_13_0_0_0), .selector_MUX_152_reg_14_0_0_0(selector_MUX_152_reg_14_0_0_0), .selector_MUX_153_reg_15_0_0_0(selector_MUX_153_reg_15_0_0_0), .selector_MUX_157_reg_19_0_0_0(selector_MUX_157_reg_19_0_0_0), .selector_MUX_161_reg_22_0_0_0(selector_MUX_161_reg_22_0_0_0), .selector_MUX_165_reg_26_0_0_0(selector_MUX_165_reg_26_0_0_0), .selector_MUX_166_reg_27_0_0_0(selector_MUX_166_reg_27_0_0_0), .selector_MUX_167_reg_28_0_0_0(selector_MUX_167_reg_28_0_0_0), .selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0(selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0), .selector_MUX_175_reg_35_0_0_0(selector_MUX_175_reg_35_0_0_0), .selector_MUX_176_reg_36_0_0_0(selector_MUX_176_reg_36_0_0_0), .selector_MUX_177_reg_37_0_0_0(selector_MUX_177_reg_37_0_0_0), .selector_MUX_192_reg_50_0_0_0(selector_MUX_192_reg_50_0_0_0), .selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0(selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0), .selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0(selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0), .selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1(selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1), .selector_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0(selector_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0), .selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0(selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0), .selector_MUX_50_PROXY_CTRLN_7_i0_0_0_0(selector_MUX_50_PROXY_CTRLN_7_i0_0_0_0), .selector_MUX_50_PROXY_CTRLN_7_i0_0_0_1(selector_MUX_50_PROXY_CTRLN_7_i0_0_0_1), .selector_MUX_55_PROXY_CTRLN_8_i0_1_0_0(selector_MUX_55_PROXY_CTRLN_8_i0_1_0_0), .selector_MUX_55_PROXY_CTRLN_8_i0_1_0_1(selector_MUX_55_PROXY_CTRLN_8_i0_1_0_1), .selector_MUX_55_PROXY_CTRLN_8_i0_1_1_0(selector_MUX_55_PROXY_CTRLN_8_i0_1_1_0), .selector_MUX_59_PROXY_CTRLN_8_i1_1_0_0(selector_MUX_59_PROXY_CTRLN_8_i1_1_0_0), .selector_MUX_63_PROXY_CTRLN_9_i0_1_0_0(selector_MUX_63_PROXY_CTRLN_9_i0_1_0_0), .selector_MUX_63_PROXY_CTRLN_9_i0_1_0_1(selector_MUX_63_PROXY_CTRLN_9_i0_1_0_1), .fuselector_PROXY_CTRLN_6_i0_LOAD(fuselector_PROXY_CTRLN_6_i0_LOAD), .fuselector_PROXY_CTRLN_6_i0_STORE(fuselector_PROXY_CTRLN_6_i0_STORE), .fuselector_PROXY_CTRLN_7_i0_LOAD(fuselector_PROXY_CTRLN_7_i0_LOAD), .fuselector_PROXY_CTRLN_7_i0_STORE(fuselector_PROXY_CTRLN_7_i0_STORE), .fuselector_PROXY_CTRLN_8_i0_LOAD(fuselector_PROXY_CTRLN_8_i0_LOAD), .fuselector_PROXY_CTRLN_8_i0_STORE(fuselector_PROXY_CTRLN_8_i0_STORE), .fuselector_PROXY_CTRLN_8_i1_LOAD(fuselector_PROXY_CTRLN_8_i1_LOAD), .fuselector_PROXY_CTRLN_8_i1_STORE(fuselector_PROXY_CTRLN_8_i1_STORE), .fuselector_PROXY_CTRLN_9_i0_LOAD(fuselector_PROXY_CTRLN_9_i0_LOAD), .fuselector_PROXY_CTRLN_9_i0_STORE(fuselector_PROXY_CTRLN_9_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_23(wrenable_reg_23), .wrenable_reg_24(wrenable_reg_24), .wrenable_reg_25(wrenable_reg_25), .wrenable_reg_26(wrenable_reg_26), .wrenable_reg_27(wrenable_reg_27), .wrenable_reg_28(wrenable_reg_28), .wrenable_reg_29(wrenable_reg_29), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_30(wrenable_reg_30), .wrenable_reg_31(wrenable_reg_31), .wrenable_reg_32(wrenable_reg_32), .wrenable_reg_33(wrenable_reg_33), .wrenable_reg_34(wrenable_reg_34), .wrenable_reg_35(wrenable_reg_35), .wrenable_reg_36(wrenable_reg_36), .wrenable_reg_37(wrenable_reg_37), .wrenable_reg_38(wrenable_reg_38), .wrenable_reg_39(wrenable_reg_39), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_40(wrenable_reg_40), .wrenable_reg_41(wrenable_reg_41), .wrenable_reg_42(wrenable_reg_42), .wrenable_reg_43(wrenable_reg_43), .wrenable_reg_44(wrenable_reg_44), .wrenable_reg_45(wrenable_reg_45), .wrenable_reg_46(wrenable_reg_46), .wrenable_reg_47(wrenable_reg_47), .wrenable_reg_48(wrenable_reg_48), .wrenable_reg_49(wrenable_reg_49), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_50(wrenable_reg_50), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_minus_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 - in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_negate_expr_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = -in1;
endmodule

// Datapath RTL description for make_non_oriented
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_make_non_oriented(clock, reset, proxy_out1_28867, proxy_in1_28867, proxy_in2_28867, proxy_in3_28867, proxy_sel_LOAD_28867, proxy_sel_STORE_28867, proxy_out1_28868, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, proxy_out1_28870, proxy_in1_28870, proxy_in2_28870, proxy_in3_28870, proxy_sel_LOAD_28870, proxy_sel_STORE_28870, selector_MUX_11_PROXY_CTRLN_2_i0_0_0_0, selector_MUX_11_PROXY_CTRLN_2_i0_0_0_1, selector_MUX_12_PROXY_CTRLN_2_i0_1_0_0, selector_MUX_12_PROXY_CTRLN_2_i0_1_0_1, selector_MUX_12_PROXY_CTRLN_2_i0_1_1_0, selector_MUX_39_reg_10_0_0_0, selector_MUX_41_reg_12_0_0_0, selector_MUX_50_reg_6_0_0_0, selector_MUX_51_reg_7_0_0_0, selector_MUX_53_reg_9_0_0_0, fuselector_PROXY_CTRLN_0_i0_LOAD, fuselector_PROXY_CTRLN_0_i0_STORE, fuselector_PROXY_CTRLN_1_i0_LOAD, fuselector_PROXY_CTRLN_1_i0_STORE, fuselector_PROXY_CTRLN_2_i0_LOAD, fuselector_PROXY_CTRLN_2_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_make_non_oriented_28874_29552, OUT_CONDITION_make_non_oriented_28874_29554);
  parameter MEM_var_28867_28882=1024, MEM_var_28868_28882=2048, MEM_var_28870_28882=4096;
  // IN
  input clock;
  input reset;
  input [15:0] proxy_out1_28867;
  input [15:0] proxy_out1_28868;
  input [15:0] proxy_out1_28870;
  input selector_MUX_11_PROXY_CTRLN_2_i0_0_0_0;
  input selector_MUX_11_PROXY_CTRLN_2_i0_0_0_1;
  input selector_MUX_12_PROXY_CTRLN_2_i0_1_0_0;
  input selector_MUX_12_PROXY_CTRLN_2_i0_1_0_1;
  input selector_MUX_12_PROXY_CTRLN_2_i0_1_1_0;
  input selector_MUX_39_reg_10_0_0_0;
  input selector_MUX_41_reg_12_0_0_0;
  input selector_MUX_50_reg_6_0_0_0;
  input selector_MUX_51_reg_7_0_0_0;
  input selector_MUX_53_reg_9_0_0_0;
  input fuselector_PROXY_CTRLN_0_i0_LOAD;
  input fuselector_PROXY_CTRLN_0_i0_STORE;
  input fuselector_PROXY_CTRLN_1_i0_LOAD;
  input fuselector_PROXY_CTRLN_1_i0_STORE;
  input fuselector_PROXY_CTRLN_2_i0_LOAD;
  input fuselector_PROXY_CTRLN_2_i0_STORE;
  input wrenable_reg_0;
  input wrenable_reg_1;
  input wrenable_reg_10;
  input wrenable_reg_11;
  input wrenable_reg_12;
  input wrenable_reg_13;
  input wrenable_reg_14;
  input wrenable_reg_15;
  input wrenable_reg_16;
  input wrenable_reg_2;
  input wrenable_reg_3;
  input wrenable_reg_4;
  input wrenable_reg_5;
  input wrenable_reg_6;
  input wrenable_reg_7;
  input wrenable_reg_8;
  input wrenable_reg_9;
  // OUT
  output [15:0] proxy_in1_28867;
  output [27:0] proxy_in2_28867;
  output [7:0] proxy_in3_28867;
  output [1:0] proxy_sel_LOAD_28867;
  output [1:0] proxy_sel_STORE_28867;
  output [15:0] proxy_in1_28868;
  output [27:0] proxy_in2_28868;
  output [7:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output [15:0] proxy_in1_28870;
  output [27:0] proxy_in2_28870;
  output [7:0] proxy_in3_28870;
  output [1:0] proxy_sel_LOAD_28870;
  output [1:0] proxy_sel_STORE_28870;
  output OUT_CONDITION_make_non_oriented_28874_29552;
  output OUT_CONDITION_make_non_oriented_28874_29554;
  // Component and signal declarations
  wire [7:0] null_out_signal_PROXY_CTRLN_0_i0_out1_0;
  wire [7:0] null_out_signal_PROXY_CTRLN_0_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_1_i0_out1_0;
  wire [7:0] null_out_signal_PROXY_CTRLN_1_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_2_i0_out1_1;
  wire [7:0] out_IUdata_converter_FU_24_i0_fu_make_non_oriented_28874_29526;
  wire [7:0] out_MUX_11_PROXY_CTRLN_2_i0_0_0_0;
  wire [7:0] out_MUX_11_PROXY_CTRLN_2_i0_0_0_1;
  wire [13:0] out_MUX_12_PROXY_CTRLN_2_i0_1_0_0;
  wire [13:0] out_MUX_12_PROXY_CTRLN_2_i0_1_0_1;
  wire [13:0] out_MUX_12_PROXY_CTRLN_2_i0_1_1_0;
  wire [4:0] out_MUX_39_reg_10_0_0_0;
  wire [31:0] out_MUX_41_reg_12_0_0_0;
  wire [31:0] out_MUX_50_reg_6_0_0_0;
  wire [9:0] out_MUX_51_reg_7_0_0_0;
  wire [31:0] out_MUX_53_reg_9_0_0_0;
  wire [7:0] out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0;
  wire signed [7:0] out_UIdata_converter_FU_25_i0_fu_make_non_oriented_28874_29517;
  wire [7:0] out_UUdata_converter_FU_15_i0_fu_make_non_oriented_28874_29458;
  wire [12:0] out_UUdata_converter_FU_16_i0_fu_make_non_oriented_28874_29461;
  wire [9:0] out_UUdata_converter_FU_17_i0_fu_make_non_oriented_28874_30671;
  wire [4:0] out_UUdata_converter_FU_23_i0_fu_make_non_oriented_28874_29515;
  wire [12:0] out_UUdata_converter_FU_26_i0_fu_make_non_oriented_28874_29489;
  wire [13:0] out_UUdata_converter_FU_6_i0_fu_make_non_oriented_28874_29442;
  wire [13:0] out_UUdata_converter_FU_7_i0_fu_make_non_oriented_28874_29443;
  wire [7:0] out_UUdata_converter_FU_8_i0_fu_make_non_oriented_28874_29459;
  wire [11:0] out_addr_expr_FU_10_i0_fu_make_non_oriented_28874_30702;
  wire [13:0] out_addr_expr_FU_5_i0_fu_make_non_oriented_28874_30642;
  wire [10:0] out_addr_expr_FU_9_i0_fu_make_non_oriented_28874_30698;
  wire signed [7:0] out_cond_expr_FU_8_8_8_8_30_i0_fu_make_non_oriented_28874_29500;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [11:0] out_const_10;
  wire [13:0] out_const_11;
  wire [4:0] out_const_2;
  wire out_const_3;
  wire [10:0] out_const_4;
  wire [2:0] out_const_5;
  wire [4:0] out_const_6;
  wire [3:0] out_const_7;
  wire [5:0] out_const_8;
  wire [7:0] out_const_9;
  wire [13:0] out_conv_out_UUdata_converter_FU_16_i0_fu_make_non_oriented_28874_29461_13_14;
  wire [31:0] out_conv_out_const_10_12_32;
  wire [31:0] out_conv_out_const_11_14_32;
  wire [3:0] out_conv_out_const_2_5_4;
  wire [31:0] out_conv_out_const_4_11_32;
  wire [13:0] out_conv_out_reg_11_reg_11_13_14;
  wire [13:0] out_conv_out_reg_14_reg_14_13_14;
  wire [13:0] out_conv_out_reg_2_reg_2_11_14;
  wire [13:0] out_conv_out_reg_3_reg_3_12_14;
  wire [31:0] out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_3_14_32;
  wire [31:0] out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_4_14_32;
  wire [9:0] out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_5_1_10;
  wire [4:0] out_conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_6_1_5;
  wire [13:0] out_conv_out_ui_pointer_plus_expr_FU_16_16_16_49_i0_fu_make_non_oriented_28874_30680_13_14;
  wire [7:0] out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_0;
  wire [7:0] out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_1;
  wire [7:0] out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_2;
  wire out_lt_expr_FU_8_0_8_31_i0_fu_make_non_oriented_28874_29509;
  wire out_read_cond_FU_27_i0_fu_make_non_oriented_28874_29552;
  wire out_read_cond_FU_28_i0_fu_make_non_oriented_28874_29554;
  wire [13:0] out_reg_0_reg_0;
  wire [4:0] out_reg_10_reg_10;
  wire [12:0] out_reg_11_reg_11;
  wire [31:0] out_reg_12_reg_12;
  wire out_reg_13_reg_13;
  wire [12:0] out_reg_14_reg_14;
  wire out_reg_15_reg_15;
  wire [7:0] out_reg_16_reg_16;
  wire [13:0] out_reg_1_reg_1;
  wire [10:0] out_reg_2_reg_2;
  wire [11:0] out_reg_3_reg_3;
  wire [1:0] out_reg_4_reg_4;
  wire [7:0] out_reg_5_reg_5;
  wire [31:0] out_reg_6_reg_6;
  wire [9:0] out_reg_7_reg_7;
  wire [9:0] out_reg_8_reg_8;
  wire [31:0] out_reg_9_reg_9;
  wire [13:0] out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_3;
  wire [13:0] out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_4;
  wire [0:0] out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_5;
  wire [0:0] out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_6;
  wire [0:0] out_ui_bit_and_expr_FU_1_1_1_32_i0_fu_make_non_oriented_28874_29505;
  wire [5:0] out_ui_bit_and_expr_FU_8_0_8_33_i0_fu_make_non_oriented_28874_30941;
  wire [7:0] out_ui_bit_ior_concat_expr_FU_34_i0_fu_make_non_oriented_28874_29460;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_35_i0_fu_make_non_oriented_28874_30955;
  wire [7:0] out_ui_lshift_expr_FU_8_0_8_36_i0_fu_make_non_oriented_28874_30937;
  wire [1:0] out_ui_minus_expr_FU_8_8_8_37_i0_fu_make_non_oriented_28874_30934;
  wire out_ui_ne_expr_FU_32_32_32_38_i0_fu_make_non_oriented_28874_30743;
  wire out_ui_ne_expr_FU_8_0_8_39_i0_fu_make_non_oriented_28874_30741;
  wire out_ui_ne_expr_FU_8_8_8_40_i0_fu_make_non_oriented_28874_29511;
  wire [7:0] out_ui_negate_expr_FU_8_8_41_i0_fu_make_non_oriented_28874_29521;
  wire [9:0] out_ui_plus_expr_FU_16_0_16_42_i0_fu_make_non_oriented_28874_29540;
  wire [10:0] out_ui_plus_expr_FU_16_16_16_43_i0_fu_make_non_oriented_28874_30674;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_44_i0_fu_make_non_oriented_28874_29498;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_45_i0_fu_make_non_oriented_28874_29537;
  wire [30:0] out_ui_plus_expr_FU_32_0_32_46_i0_fu_make_non_oriented_28874_30952;
  wire [4:0] out_ui_plus_expr_FU_8_0_8_47_i0_fu_make_non_oriented_28874_29483;
  wire [13:0] out_ui_pointer_plus_expr_FU_16_0_16_48_i0_fu_make_non_oriented_28874_30650;
  wire [12:0] out_ui_pointer_plus_expr_FU_16_16_16_49_i0_fu_make_non_oriented_28874_30680;
  wire [30:0] out_ui_rshift_expr_FU_32_0_32_50_i0_fu_make_non_oriented_28874_30947;
  wire [1:0] out_ui_rshift_expr_FU_8_0_8_51_i0_fu_make_non_oriented_28874_30927;
  wire [1:0] out_ui_rshift_expr_FU_8_0_8_51_i1_fu_make_non_oriented_28874_30932;
  wire [7:0] out_vb_assign_conn_obj_7_ASSIGN_VECTOR_BOOL_FU_vb_assign_7;
  wire [15:0] sig_in_bus_mergerproxy_in1_288670_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288681_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288702_0;
  wire [27:0] sig_in_bus_mergerproxy_in2_288673_0;
  wire [27:0] sig_in_bus_mergerproxy_in2_288684_0;
  wire [27:0] sig_in_bus_mergerproxy_in2_288705_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_288676_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_288687_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_288708_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_288679_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886810_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2887011_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886712_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886813_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2887014_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288670_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288681_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288702_0;
  wire [27:0] sig_in_vector_bus_mergerproxy_in2_288673_0;
  wire [27:0] sig_in_vector_bus_mergerproxy_in2_288684_0;
  wire [27:0] sig_in_vector_bus_mergerproxy_in2_288705_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_288676_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_288687_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_288708_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_288679_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886810_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2887011_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886712_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886813_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2887014_0;
  wire [15:0] sig_out_bus_mergerproxy_in1_288670_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288681_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288702_;
  wire [27:0] sig_out_bus_mergerproxy_in2_288673_;
  wire [27:0] sig_out_bus_mergerproxy_in2_288684_;
  wire [27:0] sig_out_bus_mergerproxy_in2_288705_;
  wire [7:0] sig_out_bus_mergerproxy_in3_288676_;
  wire [7:0] sig_out_bus_mergerproxy_in3_288687_;
  wire [7:0] sig_out_bus_mergerproxy_in3_288708_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_288679_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886810_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2887011_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886712_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886813_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2887014_;
  
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(14), .BITSIZE_out1(14)) ASSIGN_UNSIGNED_FU_u_assign_3 (.out1(out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_3), .in1(out_UUdata_converter_FU_6_i0_fu_make_non_oriented_28874_29442));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(14), .BITSIZE_out1(14)) ASSIGN_UNSIGNED_FU_u_assign_4 (.out1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_4), .in1(out_UUdata_converter_FU_6_i0_fu_make_non_oriented_28874_29442));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_5 (.out1(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_5), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_6 (.out1(out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_6), .in1(out_const_0));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_7 (.out1(out_vb_assign_conn_obj_7_ASSIGN_VECTOR_BOOL_FU_vb_assign_7), .in1(out_const_1));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_0 (.out1(out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_0), .in1(out_const_9));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_1 (.out1(out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_1), .in1(out_cond_expr_FU_8_8_8_8_30_i0_fu_make_non_oriented_28874_29500));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_2 (.out1(out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_2), .in1(out_reg_16_reg_16));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_11_PROXY_CTRLN_2_i0_0_0_0 (.out1(out_MUX_11_PROXY_CTRLN_2_i0_0_0_0), .sel(selector_MUX_11_PROXY_CTRLN_2_i0_0_0_0), .in1(out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_0), .in2(out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_1));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_11_PROXY_CTRLN_2_i0_0_0_1 (.out1(out_MUX_11_PROXY_CTRLN_2_i0_0_0_1), .sel(selector_MUX_11_PROXY_CTRLN_2_i0_0_0_1), .in1(out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_2), .in2(out_MUX_11_PROXY_CTRLN_2_i0_0_0_0));
  MUX_GATE #(.BITSIZE_in1(14), .BITSIZE_in2(14), .BITSIZE_out1(14)) MUX_12_PROXY_CTRLN_2_i0_1_0_0 (.out1(out_MUX_12_PROXY_CTRLN_2_i0_1_0_0), .sel(selector_MUX_12_PROXY_CTRLN_2_i0_1_0_0), .in1(out_conv_out_reg_14_reg_14_13_14), .in2(out_conv_out_reg_11_reg_11_13_14));
  MUX_GATE #(.BITSIZE_in1(14), .BITSIZE_in2(14), .BITSIZE_out1(14)) MUX_12_PROXY_CTRLN_2_i0_1_0_1 (.out1(out_MUX_12_PROXY_CTRLN_2_i0_1_0_1), .sel(selector_MUX_12_PROXY_CTRLN_2_i0_1_0_1), .in1(out_conv_out_UUdata_converter_FU_16_i0_fu_make_non_oriented_28874_29461_13_14), .in2(out_conv_out_ui_pointer_plus_expr_FU_16_16_16_49_i0_fu_make_non_oriented_28874_30680_13_14));
  MUX_GATE #(.BITSIZE_in1(14), .BITSIZE_in2(14), .BITSIZE_out1(14)) MUX_12_PROXY_CTRLN_2_i0_1_1_0 (.out1(out_MUX_12_PROXY_CTRLN_2_i0_1_1_0), .sel(selector_MUX_12_PROXY_CTRLN_2_i0_1_1_0), .in1(out_MUX_12_PROXY_CTRLN_2_i0_1_0_0), .in2(out_MUX_12_PROXY_CTRLN_2_i0_1_0_1));
  MUX_GATE #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(5)) MUX_39_reg_10_0_0_0 (.out1(out_MUX_39_reg_10_0_0_0), .sel(selector_MUX_39_reg_10_0_0_0), .in1(out_conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_6_1_5), .in2(out_ui_plus_expr_FU_8_0_8_47_i0_fu_make_non_oriented_28874_29483));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_41_reg_12_0_0_0 (.out1(out_MUX_41_reg_12_0_0_0), .sel(selector_MUX_41_reg_12_0_0_0), .in1(out_reg_6_reg_6), .in2(out_ui_plus_expr_FU_32_0_32_44_i0_fu_make_non_oriented_28874_29498));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_50_reg_6_0_0_0 (.out1(out_MUX_50_reg_6_0_0_0), .sel(selector_MUX_50_reg_6_0_0_0), .in1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_4_14_32), .in2(out_ui_plus_expr_FU_32_0_32_45_i0_fu_make_non_oriented_28874_29537));
  MUX_GATE #(.BITSIZE_in1(10), .BITSIZE_in2(10), .BITSIZE_out1(10)) MUX_51_reg_7_0_0_0 (.out1(out_MUX_51_reg_7_0_0_0), .sel(selector_MUX_51_reg_7_0_0_0), .in1(out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_5_1_10), .in2(out_ui_plus_expr_FU_16_0_16_42_i0_fu_make_non_oriented_28874_29540));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_53_reg_9_0_0_0 (.out1(out_MUX_53_reg_9_0_0_0), .sel(selector_MUX_53_reg_9_0_0_0), .in1(out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_3_14_32), .in2(out_ui_lshift_expr_FU_32_0_32_35_i0_fu_make_non_oriented_28874_30955));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(14), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(14), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_0_i0 (.out1({null_out_signal_PROXY_CTRLN_0_i0_out1_1, null_out_signal_PROXY_CTRLN_0_i0_out1_0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288670_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288673_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288676_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_288679_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886712_0), .in1({8'b00000000, out_vb_assign_conn_obj_7_ASSIGN_VECTOR_BOOL_FU_vb_assign_7}), .in2({14'b00000000000000, out_conv_out_reg_2_reg_2_11_14}), .in3({4'b0000, out_conv_out_const_2_5_4}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_0_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_0_i0_STORE}), .proxy_out1(proxy_out1_28867));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(14), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(14), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_1_i0 (.out1({null_out_signal_PROXY_CTRLN_1_i0_out1_1, null_out_signal_PROXY_CTRLN_1_i0_out1_0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288681_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288684_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288687_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886810_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886813_0), .in1({8'b00000000, out_vb_assign_conn_obj_7_ASSIGN_VECTOR_BOOL_FU_vb_assign_7}), .in2({14'b00000000000000, out_conv_out_reg_3_reg_3_12_14}), .in3({4'b0000, out_conv_out_const_2_5_4}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_1_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_1_i0_STORE}), .proxy_out1(proxy_out1_28868));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(14), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(14), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_2_i0 (.out1({null_out_signal_PROXY_CTRLN_2_i0_out1_1, out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288702_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288705_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288708_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2887011_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2887014_0), .in1({8'b00000000, out_MUX_11_PROXY_CTRLN_2_i0_0_0_1}), .in2({14'b00000000000000, out_MUX_12_PROXY_CTRLN_2_i0_1_1_0}), .in3({4'b0000, out_conv_out_const_2_5_4}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_2_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_2_i0_STORE}), .proxy_out1(proxy_out1_28870));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288670_ (.out1(sig_out_bus_mergerproxy_in1_288670_), .in1({sig_in_bus_mergerproxy_in1_288670_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288681_ (.out1(sig_out_bus_mergerproxy_in1_288681_), .in1({sig_in_bus_mergerproxy_in1_288681_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288702_ (.out1(sig_out_bus_mergerproxy_in1_288702_), .in1({sig_in_bus_mergerproxy_in1_288702_0}));
  bus_merger #(.BITSIZE_in1(28), .PORTSIZE_in1(1), .BITSIZE_out1(28)) bus_mergerproxy_in2_288673_ (.out1(sig_out_bus_mergerproxy_in2_288673_), .in1({sig_in_bus_mergerproxy_in2_288673_0}));
  bus_merger #(.BITSIZE_in1(28), .PORTSIZE_in1(1), .BITSIZE_out1(28)) bus_mergerproxy_in2_288684_ (.out1(sig_out_bus_mergerproxy_in2_288684_), .in1({sig_in_bus_mergerproxy_in2_288684_0}));
  bus_merger #(.BITSIZE_in1(28), .PORTSIZE_in1(1), .BITSIZE_out1(28)) bus_mergerproxy_in2_288705_ (.out1(sig_out_bus_mergerproxy_in2_288705_), .in1({sig_in_bus_mergerproxy_in2_288705_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_288676_ (.out1(sig_out_bus_mergerproxy_in3_288676_), .in1({sig_in_bus_mergerproxy_in3_288676_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_288687_ (.out1(sig_out_bus_mergerproxy_in3_288687_), .in1({sig_in_bus_mergerproxy_in3_288687_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_288708_ (.out1(sig_out_bus_mergerproxy_in3_288708_), .in1({sig_in_bus_mergerproxy_in3_288708_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_288679_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288679_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288679_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2886810_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886810_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886810_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2887011_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2887011_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2887011_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886712_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886712_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886712_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886813_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886813_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886813_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2887014_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2887014_), .in1({sig_in_bus_mergerproxy_sel_STORE_2887014_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00011001)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(12), .value(MEM_var_28868_28882)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(14), .value(MEM_var_28870_28882)) const_11 (.out1(out_const_11));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(11), .value(MEM_var_28867_28882)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(3), .value(3'b110)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(5), .value(5'b11001)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(4), .value(4'b1101)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(6), .value(6'b111111)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(8), .value(8'b11111111)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(14)) conv_out_UUdata_converter_FU_16_i0_fu_make_non_oriented_28874_29461_13_14 (.out1(out_conv_out_UUdata_converter_FU_16_i0_fu_make_non_oriented_28874_29461_13_14), .in1(out_UUdata_converter_FU_16_i0_fu_make_non_oriented_28874_29461));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(32)) conv_out_const_10_12_32 (.out1(out_conv_out_const_10_12_32), .in1(out_const_10));
  UUdata_converter_FU #(.BITSIZE_in1(14), .BITSIZE_out1(32)) conv_out_const_11_14_32 (.out1(out_conv_out_const_11_14_32), .in1(out_const_11));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_2_5_4 (.out1(out_conv_out_const_2_5_4), .in1(out_const_2));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(32)) conv_out_const_4_11_32 (.out1(out_conv_out_const_4_11_32), .in1(out_const_4));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(14)) conv_out_reg_11_reg_11_13_14 (.out1(out_conv_out_reg_11_reg_11_13_14), .in1(out_reg_11_reg_11));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(14)) conv_out_reg_14_reg_14_13_14 (.out1(out_conv_out_reg_14_reg_14_13_14), .in1(out_reg_14_reg_14));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(14)) conv_out_reg_2_reg_2_11_14 (.out1(out_conv_out_reg_2_reg_2_11_14), .in1(out_reg_2_reg_2));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(14)) conv_out_reg_3_reg_3_12_14 (.out1(out_conv_out_reg_3_reg_3_12_14), .in1(out_reg_3_reg_3));
  UUdata_converter_FU #(.BITSIZE_in1(14), .BITSIZE_out1(32)) conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_3_14_32 (.out1(out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_3_14_32), .in1(out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_3));
  UUdata_converter_FU #(.BITSIZE_in1(14), .BITSIZE_out1(32)) conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_4_14_32 (.out1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_4_14_32), .in1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_4));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(10)) conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_5_1_10 (.out1(out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_5_1_10), .in1(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_5));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(5)) conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_6_1_5 (.out1(out_conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_6_1_5), .in1(out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_6));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(14)) conv_out_ui_pointer_plus_expr_FU_16_16_16_49_i0_fu_make_non_oriented_28874_30680_13_14 (.out1(out_conv_out_ui_pointer_plus_expr_FU_16_16_16_49_i0_fu_make_non_oriented_28874_30680_13_14), .in1(out_ui_pointer_plus_expr_FU_16_16_16_49_i0_fu_make_non_oriented_28874_30680));
  UUdata_converter_FU #(.BITSIZE_in1(14), .BITSIZE_out1(14)) fu_make_non_oriented_28874_29442 (.out1(out_UUdata_converter_FU_6_i0_fu_make_non_oriented_28874_29442), .in1(out_addr_expr_FU_5_i0_fu_make_non_oriented_28874_30642));
  UUdata_converter_FU #(.BITSIZE_in1(14), .BITSIZE_out1(14)) fu_make_non_oriented_28874_29443 (.out1(out_UUdata_converter_FU_7_i0_fu_make_non_oriented_28874_29443), .in1(out_ui_pointer_plus_expr_FU_16_0_16_48_i0_fu_make_non_oriented_28874_30650));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_make_non_oriented_28874_29458 (.out1(out_UUdata_converter_FU_15_i0_fu_make_non_oriented_28874_29458), .in1(out_reg_6_reg_6));
  UUdata_converter_FU #(.BITSIZE_in1(14), .BITSIZE_out1(8)) fu_make_non_oriented_28874_29459 (.out1(out_UUdata_converter_FU_8_i0_fu_make_non_oriented_28874_29459), .in1(out_UUdata_converter_FU_6_i0_fu_make_non_oriented_28874_29442));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(6), .BITSIZE_in3(3), .BITSIZE_out1(8), .OFFSET_PARAMETER(6)) fu_make_non_oriented_28874_29460 (.out1(out_ui_bit_ior_concat_expr_FU_34_i0_fu_make_non_oriented_28874_29460), .in1(out_ui_lshift_expr_FU_8_0_8_36_i0_fu_make_non_oriented_28874_30937), .in2(out_ui_bit_and_expr_FU_8_0_8_33_i0_fu_make_non_oriented_28874_30941), .in3(out_const_5));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) fu_make_non_oriented_28874_29461 (.out1(out_UUdata_converter_FU_16_i0_fu_make_non_oriented_28874_29461), .in1(out_reg_9_reg_9));
  ui_plus_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(1), .BITSIZE_out1(5)) fu_make_non_oriented_28874_29483 (.out1(out_ui_plus_expr_FU_8_0_8_47_i0_fu_make_non_oriented_28874_29483), .in1(out_reg_10_reg_10), .in2(out_const_3));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) fu_make_non_oriented_28874_29489 (.out1(out_UUdata_converter_FU_26_i0_fu_make_non_oriented_28874_29489), .in1(out_reg_12_reg_12));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(5), .BITSIZE_out1(32)) fu_make_non_oriented_28874_29498 (.out1(out_ui_plus_expr_FU_32_0_32_44_i0_fu_make_non_oriented_28874_29498), .in1(out_reg_12_reg_12), .in2(out_const_6));
  cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_make_non_oriented_28874_29500 (.out1(out_cond_expr_FU_8_8_8_8_30_i0_fu_make_non_oriented_28874_29500), .in1(out_ui_bit_and_expr_FU_1_1_1_32_i0_fu_make_non_oriented_28874_29505), .in2(out_UIdata_converter_FU_25_i0_fu_make_non_oriented_28874_29517), .in3(out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0));
  ui_bit_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_non_oriented_28874_29505 (.out1(out_ui_bit_and_expr_FU_1_1_1_32_i0_fu_make_non_oriented_28874_29505), .in1(out_lt_expr_FU_8_0_8_31_i0_fu_make_non_oriented_28874_29509), .in2(out_reg_13_reg_13));
  lt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_non_oriented_28874_29509 (.out1(out_lt_expr_FU_8_0_8_31_i0_fu_make_non_oriented_28874_29509), .in1(out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0), .in2(out_const_0));
  ui_ne_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_make_non_oriented_28874_29511 (.out1(out_ui_ne_expr_FU_8_8_8_40_i0_fu_make_non_oriented_28874_29511), .in1(out_UUdata_converter_FU_23_i0_fu_make_non_oriented_28874_29515), .in2(out_reg_5_reg_5));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(5)) fu_make_non_oriented_28874_29515 (.out1(out_UUdata_converter_FU_23_i0_fu_make_non_oriented_28874_29515), .in1(out_reg_10_reg_10));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_make_non_oriented_28874_29517 (.out1(out_UIdata_converter_FU_25_i0_fu_make_non_oriented_28874_29517), .in1(out_ui_negate_expr_FU_8_8_41_i0_fu_make_non_oriented_28874_29521));
  ui_negate_expr_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_make_non_oriented_28874_29521 (.out1(out_ui_negate_expr_FU_8_8_41_i0_fu_make_non_oriented_28874_29521), .in1(out_IUdata_converter_FU_24_i0_fu_make_non_oriented_28874_29526));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_make_non_oriented_28874_29526 (.out1(out_IUdata_converter_FU_24_i0_fu_make_non_oriented_28874_29526), .in1(out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(32)) fu_make_non_oriented_28874_29537 (.out1(out_ui_plus_expr_FU_32_0_32_45_i0_fu_make_non_oriented_28874_29537), .in1(out_reg_6_reg_6), .in2(out_const_3));
  ui_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(5), .BITSIZE_out1(10)) fu_make_non_oriented_28874_29540 (.out1(out_ui_plus_expr_FU_16_0_16_42_i0_fu_make_non_oriented_28874_29540), .in1(out_reg_7_reg_7), .in2(out_const_6));
  read_cond_FU #(.BITSIZE_in1(1)) fu_make_non_oriented_28874_29552 (.out1(out_read_cond_FU_27_i0_fu_make_non_oriented_28874_29552), .in1(out_reg_15_reg_15));
  read_cond_FU #(.BITSIZE_in1(1)) fu_make_non_oriented_28874_29554 (.out1(out_read_cond_FU_28_i0_fu_make_non_oriented_28874_29554), .in1(out_ui_ne_expr_FU_32_32_32_38_i0_fu_make_non_oriented_28874_30743));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(14)) fu_make_non_oriented_28874_30642 (.out1(out_addr_expr_FU_5_i0_fu_make_non_oriented_28874_30642), .in1(out_conv_out_const_11_14_32));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(14), .BITSIZE_in2(5), .BITSIZE_out1(14), .LSB_PARAMETER(0)) fu_make_non_oriented_28874_30650 (.out1(out_ui_pointer_plus_expr_FU_16_0_16_48_i0_fu_make_non_oriented_28874_30650), .in1(out_addr_expr_FU_5_i0_fu_make_non_oriented_28874_30642), .in2(out_const_6));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(10)) fu_make_non_oriented_28874_30671 (.out1(out_UUdata_converter_FU_17_i0_fu_make_non_oriented_28874_30671), .in1(out_reg_7_reg_7));
  ui_plus_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(10), .BITSIZE_out1(11)) fu_make_non_oriented_28874_30674 (.out1(out_ui_plus_expr_FU_16_16_16_43_i0_fu_make_non_oriented_28874_30674), .in1(out_reg_10_reg_10), .in2(out_reg_8_reg_8));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(14), .BITSIZE_in2(11), .BITSIZE_out1(13), .LSB_PARAMETER(0)) fu_make_non_oriented_28874_30680 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_49_i0_fu_make_non_oriented_28874_30680), .in1(out_reg_1_reg_1), .in2(out_ui_plus_expr_FU_16_16_16_43_i0_fu_make_non_oriented_28874_30674));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(11)) fu_make_non_oriented_28874_30698 (.out1(out_addr_expr_FU_9_i0_fu_make_non_oriented_28874_30698), .in1(out_conv_out_const_4_11_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(12)) fu_make_non_oriented_28874_30702 (.out1(out_addr_expr_FU_10_i0_fu_make_non_oriented_28874_30702), .in1(out_conv_out_const_10_12_32));
  ui_ne_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(1)) fu_make_non_oriented_28874_30741 (.out1(out_ui_ne_expr_FU_8_0_8_39_i0_fu_make_non_oriented_28874_30741), .in1(out_ui_plus_expr_FU_8_0_8_47_i0_fu_make_non_oriented_28874_29483), .in2(out_const_6));
  ui_ne_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(14), .BITSIZE_out1(1)) fu_make_non_oriented_28874_30743 (.out1(out_ui_ne_expr_FU_32_32_32_38_i0_fu_make_non_oriented_28874_30743), .in1(out_reg_6_reg_6), .in2(out_reg_0_reg_0));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_out1(2), .PRECISION(8)) fu_make_non_oriented_28874_30927 (.out1(out_ui_rshift_expr_FU_8_0_8_51_i0_fu_make_non_oriented_28874_30927), .in1(out_UUdata_converter_FU_15_i0_fu_make_non_oriented_28874_29458), .in2(out_const_5));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_out1(2), .PRECISION(8)) fu_make_non_oriented_28874_30932 (.out1(out_ui_rshift_expr_FU_8_0_8_51_i1_fu_make_non_oriented_28874_30932), .in1(out_UUdata_converter_FU_8_i0_fu_make_non_oriented_28874_29459), .in2(out_const_5));
  ui_minus_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_make_non_oriented_28874_30934 (.out1(out_ui_minus_expr_FU_8_8_8_37_i0_fu_make_non_oriented_28874_30934), .in1(out_ui_rshift_expr_FU_8_0_8_51_i0_fu_make_non_oriented_28874_30927), .in2(out_reg_4_reg_4));
  ui_lshift_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(3), .BITSIZE_out1(8), .PRECISION(8)) fu_make_non_oriented_28874_30937 (.out1(out_ui_lshift_expr_FU_8_0_8_36_i0_fu_make_non_oriented_28874_30937), .in1(out_ui_minus_expr_FU_8_8_8_37_i0_fu_make_non_oriented_28874_30934), .in2(out_const_5));
  ui_bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(6), .BITSIZE_out1(6)) fu_make_non_oriented_28874_30941 (.out1(out_ui_bit_and_expr_FU_8_0_8_33_i0_fu_make_non_oriented_28874_30941), .in1(out_UUdata_converter_FU_15_i0_fu_make_non_oriented_28874_29458), .in2(out_const_8));
  ui_rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(31), .PRECISION(32)) fu_make_non_oriented_28874_30947 (.out1(out_ui_rshift_expr_FU_32_0_32_50_i0_fu_make_non_oriented_28874_30947), .in1(out_reg_9_reg_9), .in2(out_const_3));
  ui_plus_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(4), .BITSIZE_out1(31)) fu_make_non_oriented_28874_30952 (.out1(out_ui_plus_expr_FU_32_0_32_46_i0_fu_make_non_oriented_28874_30952), .in1(out_ui_rshift_expr_FU_32_0_32_50_i0_fu_make_non_oriented_28874_30947), .in2(out_const_7));
  ui_lshift_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(1), .BITSIZE_out1(32), .PRECISION(32)) fu_make_non_oriented_28874_30955 (.out1(out_ui_lshift_expr_FU_32_0_32_35_i0_fu_make_non_oriented_28874_30955), .in1(out_ui_plus_expr_FU_32_0_32_46_i0_fu_make_non_oriented_28874_30952), .in2(out_const_3));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288670_0 (.out1(sig_in_bus_mergerproxy_in1_288670_0), .in1(sig_in_vector_bus_mergerproxy_in1_288670_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288681_0 (.out1(sig_in_bus_mergerproxy_in1_288681_0), .in1(sig_in_vector_bus_mergerproxy_in1_288681_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288702_0 (.out1(sig_in_bus_mergerproxy_in1_288702_0), .in1(sig_in_vector_bus_mergerproxy_in1_288702_0));
  join_signal #(.BITSIZE_in1(14), .PORTSIZE_in1(2), .BITSIZE_out1(28)) join_signalbus_mergerproxy_in2_288673_0 (.out1(sig_in_bus_mergerproxy_in2_288673_0), .in1(sig_in_vector_bus_mergerproxy_in2_288673_0));
  join_signal #(.BITSIZE_in1(14), .PORTSIZE_in1(2), .BITSIZE_out1(28)) join_signalbus_mergerproxy_in2_288684_0 (.out1(sig_in_bus_mergerproxy_in2_288684_0), .in1(sig_in_vector_bus_mergerproxy_in2_288684_0));
  join_signal #(.BITSIZE_in1(14), .PORTSIZE_in1(2), .BITSIZE_out1(28)) join_signalbus_mergerproxy_in2_288705_0 (.out1(sig_in_bus_mergerproxy_in2_288705_0), .in1(sig_in_vector_bus_mergerproxy_in2_288705_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_288676_0 (.out1(sig_in_bus_mergerproxy_in3_288676_0), .in1(sig_in_vector_bus_mergerproxy_in3_288676_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_288687_0 (.out1(sig_in_bus_mergerproxy_in3_288687_0), .in1(sig_in_vector_bus_mergerproxy_in3_288687_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_288708_0 (.out1(sig_in_bus_mergerproxy_in3_288708_0), .in1(sig_in_vector_bus_mergerproxy_in3_288708_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_288679_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_288679_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_288679_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886810_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886810_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886810_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2887011_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2887011_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2887011_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886712_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886712_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886712_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886813_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886813_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886813_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2887014_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2887014_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2887014_0));
  register_SE #(.BITSIZE_in1(14), .BITSIZE_out1(14)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_7_i0_fu_make_non_oriented_28874_29443), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(14), .BITSIZE_out1(14)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_5_i0_fu_make_non_oriented_28874_30642), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(5), .BITSIZE_out1(5)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_MUX_39_reg_10_0_0_0), .wenable(wrenable_reg_10));
  register_SE #(.BITSIZE_in1(13), .BITSIZE_out1(13)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_26_i0_fu_make_non_oriented_28874_29489), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_MUX_41_reg_12_0_0_0), .wenable(wrenable_reg_12));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_8_8_40_i0_fu_make_non_oriented_28874_29511), .wenable(wrenable_reg_13));
  register_STD #(.BITSIZE_in1(13), .BITSIZE_out1(13)) reg_14 (.out1(out_reg_14_reg_14), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_49_i0_fu_make_non_oriented_28874_30680), .wenable(wrenable_reg_14));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_15 (.out1(out_reg_15_reg_15), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_39_i0_fu_make_non_oriented_28874_30741), .wenable(wrenable_reg_15));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_16 (.out1(out_reg_16_reg_16), .clock(clock), .reset(reset), .in1(out_cond_expr_FU_8_8_8_8_30_i0_fu_make_non_oriented_28874_29500), .wenable(wrenable_reg_16));
  register_SE #(.BITSIZE_in1(11), .BITSIZE_out1(11)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_9_i0_fu_make_non_oriented_28874_30698), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(12), .BITSIZE_out1(12)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_10_i0_fu_make_non_oriented_28874_30702), .wenable(wrenable_reg_3));
  register_SE #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_ui_rshift_expr_FU_8_0_8_51_i1_fu_make_non_oriented_28874_30932), .wenable(wrenable_reg_4));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_ui_bit_ior_concat_expr_FU_34_i0_fu_make_non_oriented_28874_29460), .wenable(wrenable_reg_5));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_MUX_50_reg_6_0_0_0), .wenable(wrenable_reg_6));
  register_SE #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_MUX_51_reg_7_0_0_0), .wenable(wrenable_reg_7));
  register_SE #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_17_i0_fu_make_non_oriented_28874_30671), .wenable(wrenable_reg_8));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_MUX_53_reg_9_0_0_0), .wenable(wrenable_reg_9));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288670_ (.out1(proxy_in1_28867), .in1(sig_out_bus_mergerproxy_in1_288670_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288681_ (.out1(proxy_in1_28868), .in1(sig_out_bus_mergerproxy_in1_288681_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288702_ (.out1(proxy_in1_28870), .in1(sig_out_bus_mergerproxy_in1_288702_));
  split_signal #(.BITSIZE_in1(28), .BITSIZE_out1(14), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288673_ (.out1(proxy_in2_28867), .in1(sig_out_bus_mergerproxy_in2_288673_));
  split_signal #(.BITSIZE_in1(28), .BITSIZE_out1(14), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288684_ (.out1(proxy_in2_28868), .in1(sig_out_bus_mergerproxy_in2_288684_));
  split_signal #(.BITSIZE_in1(28), .BITSIZE_out1(14), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288705_ (.out1(proxy_in2_28870), .in1(sig_out_bus_mergerproxy_in2_288705_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_288676_ (.out1(proxy_in3_28867), .in1(sig_out_bus_mergerproxy_in3_288676_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_288687_ (.out1(proxy_in3_28868), .in1(sig_out_bus_mergerproxy_in3_288687_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_288708_ (.out1(proxy_in3_28870), .in1(sig_out_bus_mergerproxy_in3_288708_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_288679_ (.out1(proxy_sel_LOAD_28867), .in1(sig_out_bus_mergerproxy_sel_LOAD_288679_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886810_ (.out1(proxy_sel_LOAD_28868), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886810_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2887011_ (.out1(proxy_sel_LOAD_28870), .in1(sig_out_bus_mergerproxy_sel_LOAD_2887011_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886712_ (.out1(proxy_sel_STORE_28867), .in1(sig_out_bus_mergerproxy_sel_STORE_2886712_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886813_ (.out1(proxy_sel_STORE_28868), .in1(sig_out_bus_mergerproxy_sel_STORE_2886813_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2887014_ (.out1(proxy_sel_STORE_28870), .in1(sig_out_bus_mergerproxy_sel_STORE_2887014_));
  // io-signal post fix
  assign OUT_CONDITION_make_non_oriented_28874_29552 = out_read_cond_FU_27_i0_fu_make_non_oriented_28874_29552;
  assign OUT_CONDITION_make_non_oriented_28874_29554 = out_read_cond_FU_28_i0_fu_make_non_oriented_28874_29554;

endmodule

// FSM based controller description for make_non_oriented
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_make_non_oriented(done_port, selector_MUX_11_PROXY_CTRLN_2_i0_0_0_0, selector_MUX_11_PROXY_CTRLN_2_i0_0_0_1, selector_MUX_12_PROXY_CTRLN_2_i0_1_0_0, selector_MUX_12_PROXY_CTRLN_2_i0_1_0_1, selector_MUX_12_PROXY_CTRLN_2_i0_1_1_0, selector_MUX_39_reg_10_0_0_0, selector_MUX_41_reg_12_0_0_0, selector_MUX_50_reg_6_0_0_0, selector_MUX_51_reg_7_0_0_0, selector_MUX_53_reg_9_0_0_0, fuselector_PROXY_CTRLN_0_i0_LOAD, fuselector_PROXY_CTRLN_0_i0_STORE, fuselector_PROXY_CTRLN_1_i0_LOAD, fuselector_PROXY_CTRLN_1_i0_STORE, fuselector_PROXY_CTRLN_2_i0_LOAD, fuselector_PROXY_CTRLN_2_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_make_non_oriented_28874_29552, OUT_CONDITION_make_non_oriented_28874_29554, clock, reset, start_port);
  // IN
  input OUT_CONDITION_make_non_oriented_28874_29552;
  input OUT_CONDITION_make_non_oriented_28874_29554;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output selector_MUX_11_PROXY_CTRLN_2_i0_0_0_0;
  output selector_MUX_11_PROXY_CTRLN_2_i0_0_0_1;
  output selector_MUX_12_PROXY_CTRLN_2_i0_1_0_0;
  output selector_MUX_12_PROXY_CTRLN_2_i0_1_0_1;
  output selector_MUX_12_PROXY_CTRLN_2_i0_1_1_0;
  output selector_MUX_39_reg_10_0_0_0;
  output selector_MUX_41_reg_12_0_0_0;
  output selector_MUX_50_reg_6_0_0_0;
  output selector_MUX_51_reg_7_0_0_0;
  output selector_MUX_53_reg_9_0_0_0;
  output fuselector_PROXY_CTRLN_0_i0_LOAD;
  output fuselector_PROXY_CTRLN_0_i0_STORE;
  output fuselector_PROXY_CTRLN_1_i0_LOAD;
  output fuselector_PROXY_CTRLN_1_i0_STORE;
  output fuselector_PROXY_CTRLN_2_i0_LOAD;
  output fuselector_PROXY_CTRLN_2_i0_STORE;
  output wrenable_reg_0;
  output wrenable_reg_1;
  output wrenable_reg_10;
  output wrenable_reg_11;
  output wrenable_reg_12;
  output wrenable_reg_13;
  output wrenable_reg_14;
  output wrenable_reg_15;
  output wrenable_reg_16;
  output wrenable_reg_2;
  output wrenable_reg_3;
  output wrenable_reg_4;
  output wrenable_reg_5;
  output wrenable_reg_6;
  output wrenable_reg_7;
  output wrenable_reg_8;
  output wrenable_reg_9;
  parameter [2:0] S_0 = 3'd0,
    S_1 = 3'd1,
    S_2 = 3'd2,
    S_3 = 3'd3,
    S_4 = 3'd4,
    S_5 = 3'd5,
    S_6 = 3'd6;
  reg [2:0] _present_state, _next_state;
  reg done_port;
  reg selector_MUX_11_PROXY_CTRLN_2_i0_0_0_0;
  reg selector_MUX_11_PROXY_CTRLN_2_i0_0_0_1;
  reg selector_MUX_12_PROXY_CTRLN_2_i0_1_0_0;
  reg selector_MUX_12_PROXY_CTRLN_2_i0_1_0_1;
  reg selector_MUX_12_PROXY_CTRLN_2_i0_1_1_0;
  reg selector_MUX_39_reg_10_0_0_0;
  reg selector_MUX_41_reg_12_0_0_0;
  reg selector_MUX_50_reg_6_0_0_0;
  reg selector_MUX_51_reg_7_0_0_0;
  reg selector_MUX_53_reg_9_0_0_0;
  reg fuselector_PROXY_CTRLN_0_i0_LOAD;
  reg fuselector_PROXY_CTRLN_0_i0_STORE;
  reg fuselector_PROXY_CTRLN_1_i0_LOAD;
  reg fuselector_PROXY_CTRLN_1_i0_STORE;
  reg fuselector_PROXY_CTRLN_2_i0_LOAD;
  reg fuselector_PROXY_CTRLN_2_i0_STORE;
  reg wrenable_reg_0;
  reg wrenable_reg_1;
  reg wrenable_reg_10;
  reg wrenable_reg_11;
  reg wrenable_reg_12;
  reg wrenable_reg_13;
  reg wrenable_reg_14;
  reg wrenable_reg_15;
  reg wrenable_reg_16;
  reg wrenable_reg_2;
  reg wrenable_reg_3;
  reg wrenable_reg_4;
  reg wrenable_reg_5;
  reg wrenable_reg_6;
  reg wrenable_reg_7;
  reg wrenable_reg_8;
  reg wrenable_reg_9;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_0;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    selector_MUX_11_PROXY_CTRLN_2_i0_0_0_0 = 1'b0;
    selector_MUX_11_PROXY_CTRLN_2_i0_0_0_1 = 1'b0;
    selector_MUX_12_PROXY_CTRLN_2_i0_1_0_0 = 1'b0;
    selector_MUX_12_PROXY_CTRLN_2_i0_1_0_1 = 1'b0;
    selector_MUX_12_PROXY_CTRLN_2_i0_1_1_0 = 1'b0;
    selector_MUX_39_reg_10_0_0_0 = 1'b0;
    selector_MUX_41_reg_12_0_0_0 = 1'b0;
    selector_MUX_50_reg_6_0_0_0 = 1'b0;
    selector_MUX_51_reg_7_0_0_0 = 1'b0;
    selector_MUX_53_reg_9_0_0_0 = 1'b0;
    fuselector_PROXY_CTRLN_0_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_0_i0_STORE = 1'b0;
    fuselector_PROXY_CTRLN_1_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_1_i0_STORE = 1'b0;
    fuselector_PROXY_CTRLN_2_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_2_i0_STORE = 1'b0;
    wrenable_reg_0 = 1'b0;
    wrenable_reg_1 = 1'b0;
    wrenable_reg_10 = 1'b0;
    wrenable_reg_11 = 1'b0;
    wrenable_reg_12 = 1'b0;
    wrenable_reg_13 = 1'b0;
    wrenable_reg_14 = 1'b0;
    wrenable_reg_15 = 1'b0;
    wrenable_reg_16 = 1'b0;
    wrenable_reg_2 = 1'b0;
    wrenable_reg_3 = 1'b0;
    wrenable_reg_4 = 1'b0;
    wrenable_reg_5 = 1'b0;
    wrenable_reg_6 = 1'b0;
    wrenable_reg_7 = 1'b0;
    wrenable_reg_8 = 1'b0;
    wrenable_reg_9 = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          selector_MUX_50_reg_6_0_0_0 = 1'b1;
          selector_MUX_51_reg_7_0_0_0 = 1'b1;
          selector_MUX_53_reg_9_0_0_0 = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_3 = 1'b1;
          wrenable_reg_4 = 1'b1;
          wrenable_reg_6 = 1'b1;
          wrenable_reg_7 = 1'b1;
          wrenable_reg_9 = 1'b1;
          _next_state = S_1;
        end
        else
        begin
          selector_MUX_11_PROXY_CTRLN_2_i0_0_0_0 = 1'bX;
          selector_MUX_11_PROXY_CTRLN_2_i0_0_0_1 = 1'bX;
          selector_MUX_12_PROXY_CTRLN_2_i0_1_0_0 = 1'bX;
          selector_MUX_12_PROXY_CTRLN_2_i0_1_0_1 = 1'bX;
          selector_MUX_12_PROXY_CTRLN_2_i0_1_1_0 = 1'bX;
          selector_MUX_39_reg_10_0_0_0 = 1'bX;
          selector_MUX_41_reg_12_0_0_0 = 1'bX;
          selector_MUX_50_reg_6_0_0_0 = 1'bX;
          selector_MUX_51_reg_7_0_0_0 = 1'bX;
          selector_MUX_53_reg_9_0_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_10 = 1'bX;
          wrenable_reg_11 = 1'bX;
          wrenable_reg_12 = 1'bX;
          wrenable_reg_13 = 1'bX;
          wrenable_reg_14 = 1'bX;
          wrenable_reg_15 = 1'bX;
          wrenable_reg_16 = 1'bX;
          wrenable_reg_2 = 1'bX;
          wrenable_reg_3 = 1'bX;
          wrenable_reg_4 = 1'bX;
          wrenable_reg_5 = 1'bX;
          wrenable_reg_6 = 1'bX;
          wrenable_reg_7 = 1'bX;
          wrenable_reg_8 = 1'bX;
          wrenable_reg_9 = 1'bX;
          _next_state = S_0;
        end
      S_1 :
        begin
          selector_MUX_11_PROXY_CTRLN_2_i0_0_0_0 = 1'b1;
          selector_MUX_12_PROXY_CTRLN_2_i0_1_0_1 = 1'b1;
          selector_MUX_39_reg_10_0_0_0 = 1'b1;
          selector_MUX_41_reg_12_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          wrenable_reg_10 = 1'b1;
          wrenable_reg_12 = 1'b1;
          wrenable_reg_5 = 1'b1;
          wrenable_reg_6 = 1'b1;
          wrenable_reg_7 = 1'b1;
          wrenable_reg_8 = 1'b1;
          wrenable_reg_9 = 1'b1;
          _next_state = S_2;
        end
      S_2 :
        begin
          fuselector_PROXY_CTRLN_2_i0_LOAD = 1'b1;
          wrenable_reg_10 = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_12 = 1'b1;
          wrenable_reg_13 = 1'b1;
          wrenable_reg_14 = 1'b1;
          wrenable_reg_15 = 1'b1;
          _next_state = S_3;
        end
      S_3 :
        begin
          selector_MUX_12_PROXY_CTRLN_2_i0_1_0_0 = 1'b1;
          selector_MUX_12_PROXY_CTRLN_2_i0_1_1_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          wrenable_reg_16 = 1'b1;
          _next_state = S_4;
        end
      S_4 :
        begin
          selector_MUX_11_PROXY_CTRLN_2_i0_0_0_1 = 1'b1;
          selector_MUX_12_PROXY_CTRLN_2_i0_1_1_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          if (OUT_CONDITION_make_non_oriented_28874_29552 == 1'b1)
            begin
              _next_state = S_2;
            end
          else
            begin
              _next_state = S_5;
            end
        end
      S_5 :
        begin
          if (OUT_CONDITION_make_non_oriented_28874_29554 == 1'b1)
            begin
              _next_state = S_1;
            end
          else
            begin
              _next_state = S_6;
              done_port = 1'b1;
            end
        end
      S_6 :
        begin
          fuselector_PROXY_CTRLN_0_i0_STORE = 1'b1;
          fuselector_PROXY_CTRLN_1_i0_STORE = 1'b1;
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_11_PROXY_CTRLN_2_i0_0_0_0 = 1'bX;
          selector_MUX_11_PROXY_CTRLN_2_i0_0_0_1 = 1'bX;
          selector_MUX_12_PROXY_CTRLN_2_i0_1_0_0 = 1'bX;
          selector_MUX_12_PROXY_CTRLN_2_i0_1_0_1 = 1'bX;
          selector_MUX_12_PROXY_CTRLN_2_i0_1_1_0 = 1'bX;
          selector_MUX_39_reg_10_0_0_0 = 1'bX;
          selector_MUX_41_reg_12_0_0_0 = 1'bX;
          selector_MUX_50_reg_6_0_0_0 = 1'bX;
          selector_MUX_51_reg_7_0_0_0 = 1'bX;
          selector_MUX_53_reg_9_0_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_10 = 1'bX;
          wrenable_reg_11 = 1'bX;
          wrenable_reg_12 = 1'bX;
          wrenable_reg_13 = 1'bX;
          wrenable_reg_14 = 1'bX;
          wrenable_reg_15 = 1'bX;
          wrenable_reg_16 = 1'bX;
          wrenable_reg_2 = 1'bX;
          wrenable_reg_3 = 1'bX;
          wrenable_reg_4 = 1'bX;
          wrenable_reg_5 = 1'bX;
          wrenable_reg_6 = 1'bX;
          wrenable_reg_7 = 1'bX;
          wrenable_reg_8 = 1'bX;
          wrenable_reg_9 = 1'bX;
        end
    endcase
  end
endmodule

// Top component for make_non_oriented
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module make_non_oriented(clock, reset, start_port, done_port, proxy_out1_28867, proxy_out1_28868, proxy_out1_28870, proxy_in1_28867, proxy_in2_28867, proxy_in3_28867, proxy_sel_LOAD_28867, proxy_sel_STORE_28867, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, proxy_in1_28870, proxy_in2_28870, proxy_in3_28870, proxy_sel_LOAD_28870, proxy_sel_STORE_28870);
  parameter MEM_var_28867_28882=1024, MEM_var_28868_28882=2048, MEM_var_28870_28882=4096;
  // IN
  input clock;
  input reset;
  input start_port;
  input [15:0] proxy_out1_28867;
  input [15:0] proxy_out1_28868;
  input [15:0] proxy_out1_28870;
  // OUT
  output done_port;
  output [15:0] proxy_in1_28867;
  output [27:0] proxy_in2_28867;
  output [7:0] proxy_in3_28867;
  output [1:0] proxy_sel_LOAD_28867;
  output [1:0] proxy_sel_STORE_28867;
  output [15:0] proxy_in1_28868;
  output [27:0] proxy_in2_28868;
  output [7:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output [15:0] proxy_in1_28870;
  output [27:0] proxy_in2_28870;
  output [7:0] proxy_in3_28870;
  output [1:0] proxy_sel_LOAD_28870;
  output [1:0] proxy_sel_STORE_28870;
  // Component and signal declarations
  wire OUT_CONDITION_make_non_oriented_28874_29552;
  wire OUT_CONDITION_make_non_oriented_28874_29554;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_PROXY_CTRLN_0_i0_LOAD;
  wire fuselector_PROXY_CTRLN_0_i0_STORE;
  wire fuselector_PROXY_CTRLN_1_i0_LOAD;
  wire fuselector_PROXY_CTRLN_1_i0_STORE;
  wire fuselector_PROXY_CTRLN_2_i0_LOAD;
  wire fuselector_PROXY_CTRLN_2_i0_STORE;
  wire selector_MUX_11_PROXY_CTRLN_2_i0_0_0_0;
  wire selector_MUX_11_PROXY_CTRLN_2_i0_0_0_1;
  wire selector_MUX_12_PROXY_CTRLN_2_i0_1_0_0;
  wire selector_MUX_12_PROXY_CTRLN_2_i0_1_0_1;
  wire selector_MUX_12_PROXY_CTRLN_2_i0_1_1_0;
  wire selector_MUX_39_reg_10_0_0_0;
  wire selector_MUX_41_reg_12_0_0_0;
  wire selector_MUX_50_reg_6_0_0_0;
  wire selector_MUX_51_reg_7_0_0_0;
  wire selector_MUX_53_reg_9_0_0_0;
  wire wrenable_reg_0;
  wire wrenable_reg_1;
  wire wrenable_reg_10;
  wire wrenable_reg_11;
  wire wrenable_reg_12;
  wire wrenable_reg_13;
  wire wrenable_reg_14;
  wire wrenable_reg_15;
  wire wrenable_reg_16;
  wire wrenable_reg_2;
  wire wrenable_reg_3;
  wire wrenable_reg_4;
  wire wrenable_reg_5;
  wire wrenable_reg_6;
  wire wrenable_reg_7;
  wire wrenable_reg_8;
  wire wrenable_reg_9;
  
  controller_make_non_oriented Controller_i (.done_port(done_delayed_REG_signal_in), .selector_MUX_11_PROXY_CTRLN_2_i0_0_0_0(selector_MUX_11_PROXY_CTRLN_2_i0_0_0_0), .selector_MUX_11_PROXY_CTRLN_2_i0_0_0_1(selector_MUX_11_PROXY_CTRLN_2_i0_0_0_1), .selector_MUX_12_PROXY_CTRLN_2_i0_1_0_0(selector_MUX_12_PROXY_CTRLN_2_i0_1_0_0), .selector_MUX_12_PROXY_CTRLN_2_i0_1_0_1(selector_MUX_12_PROXY_CTRLN_2_i0_1_0_1), .selector_MUX_12_PROXY_CTRLN_2_i0_1_1_0(selector_MUX_12_PROXY_CTRLN_2_i0_1_1_0), .selector_MUX_39_reg_10_0_0_0(selector_MUX_39_reg_10_0_0_0), .selector_MUX_41_reg_12_0_0_0(selector_MUX_41_reg_12_0_0_0), .selector_MUX_50_reg_6_0_0_0(selector_MUX_50_reg_6_0_0_0), .selector_MUX_51_reg_7_0_0_0(selector_MUX_51_reg_7_0_0_0), .selector_MUX_53_reg_9_0_0_0(selector_MUX_53_reg_9_0_0_0), .fuselector_PROXY_CTRLN_0_i0_LOAD(fuselector_PROXY_CTRLN_0_i0_LOAD), .fuselector_PROXY_CTRLN_0_i0_STORE(fuselector_PROXY_CTRLN_0_i0_STORE), .fuselector_PROXY_CTRLN_1_i0_LOAD(fuselector_PROXY_CTRLN_1_i0_LOAD), .fuselector_PROXY_CTRLN_1_i0_STORE(fuselector_PROXY_CTRLN_1_i0_STORE), .fuselector_PROXY_CTRLN_2_i0_LOAD(fuselector_PROXY_CTRLN_2_i0_LOAD), .fuselector_PROXY_CTRLN_2_i0_STORE(fuselector_PROXY_CTRLN_2_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_CONDITION_make_non_oriented_28874_29552(OUT_CONDITION_make_non_oriented_28874_29552), .OUT_CONDITION_make_non_oriented_28874_29554(OUT_CONDITION_make_non_oriented_28874_29554), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_make_non_oriented #(.MEM_var_28867_28882(MEM_var_28867_28882), .MEM_var_28868_28882(MEM_var_28868_28882), .MEM_var_28870_28882(MEM_var_28870_28882)) Datapath_i (.proxy_in1_28867(proxy_in1_28867), .proxy_in2_28867(proxy_in2_28867), .proxy_in3_28867(proxy_in3_28867), .proxy_sel_LOAD_28867(proxy_sel_LOAD_28867), .proxy_sel_STORE_28867(proxy_sel_STORE_28867), .proxy_in1_28868(proxy_in1_28868), .proxy_in2_28868(proxy_in2_28868), .proxy_in3_28868(proxy_in3_28868), .proxy_sel_LOAD_28868(proxy_sel_LOAD_28868), .proxy_sel_STORE_28868(proxy_sel_STORE_28868), .proxy_in1_28870(proxy_in1_28870), .proxy_in2_28870(proxy_in2_28870), .proxy_in3_28870(proxy_in3_28870), .proxy_sel_LOAD_28870(proxy_sel_LOAD_28870), .proxy_sel_STORE_28870(proxy_sel_STORE_28870), .OUT_CONDITION_make_non_oriented_28874_29552(OUT_CONDITION_make_non_oriented_28874_29552), .OUT_CONDITION_make_non_oriented_28874_29554(OUT_CONDITION_make_non_oriented_28874_29554), .clock(clock), .reset(reset), .proxy_out1_28867(proxy_out1_28867), .proxy_out1_28868(proxy_out1_28868), .proxy_out1_28870(proxy_out1_28870), .selector_MUX_11_PROXY_CTRLN_2_i0_0_0_0(selector_MUX_11_PROXY_CTRLN_2_i0_0_0_0), .selector_MUX_11_PROXY_CTRLN_2_i0_0_0_1(selector_MUX_11_PROXY_CTRLN_2_i0_0_0_1), .selector_MUX_12_PROXY_CTRLN_2_i0_1_0_0(selector_MUX_12_PROXY_CTRLN_2_i0_1_0_0), .selector_MUX_12_PROXY_CTRLN_2_i0_1_0_1(selector_MUX_12_PROXY_CTRLN_2_i0_1_0_1), .selector_MUX_12_PROXY_CTRLN_2_i0_1_1_0(selector_MUX_12_PROXY_CTRLN_2_i0_1_1_0), .selector_MUX_39_reg_10_0_0_0(selector_MUX_39_reg_10_0_0_0), .selector_MUX_41_reg_12_0_0_0(selector_MUX_41_reg_12_0_0_0), .selector_MUX_50_reg_6_0_0_0(selector_MUX_50_reg_6_0_0_0), .selector_MUX_51_reg_7_0_0_0(selector_MUX_51_reg_7_0_0_0), .selector_MUX_53_reg_9_0_0_0(selector_MUX_53_reg_9_0_0_0), .fuselector_PROXY_CTRLN_0_i0_LOAD(fuselector_PROXY_CTRLN_0_i0_LOAD), .fuselector_PROXY_CTRLN_0_i0_STORE(fuselector_PROXY_CTRLN_0_i0_STORE), .fuselector_PROXY_CTRLN_1_i0_LOAD(fuselector_PROXY_CTRLN_1_i0_LOAD), .fuselector_PROXY_CTRLN_1_i0_STORE(fuselector_PROXY_CTRLN_1_i0_STORE), .fuselector_PROXY_CTRLN_2_i0_LOAD(fuselector_PROXY_CTRLN_2_i0_LOAD), .fuselector_PROXY_CTRLN_2_i0_STORE(fuselector_PROXY_CTRLN_2_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// Datapath RTL description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_main(clock, reset, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE, selector_IN_UNBOUNDED_main_28882_30140, selector_IN_UNBOUNDED_main_28882_30174, selector_IN_UNBOUNDED_main_28882_30183, selector_MUX_27_reg_3_0_0_0, wrenable_reg_0, wrenable_reg_1, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, OUT_CONDITION_main_28882_30163, OUT_CONDITION_main_28882_30175, OUT_UNBOUNDED_main_28882_30140, OUT_UNBOUNDED_main_28882_30174, OUT_UNBOUNDED_main_28882_30183);
  parameter MEM_var_28859_28880=5120, MEM_var_28861_28880=6144, MEM_var_28862_28880=7168, MEM_var_28864_28880=8192, MEM_var_28865_28880=9216, MEM_var_28866_28880=10240, MEM_var_28867_28882=1024, MEM_var_28868_28882=2048, MEM_var_28869_28882=3072, MEM_var_28870_28882=4096;
  // IN
  input clock;
  input reset;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [27:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [15:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [27:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE;
  input selector_IN_UNBOUNDED_main_28882_30140;
  input selector_IN_UNBOUNDED_main_28882_30174;
  input selector_IN_UNBOUNDED_main_28882_30183;
  input selector_MUX_27_reg_3_0_0_0;
  input wrenable_reg_0;
  input wrenable_reg_1;
  input wrenable_reg_2;
  input wrenable_reg_3;
  input wrenable_reg_4;
  // OUT
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [27:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  output OUT_CONDITION_main_28882_30163;
  output OUT_CONDITION_main_28882_30175;
  output OUT_UNBOUNDED_main_28882_30140;
  output OUT_UNBOUNDED_main_28882_30174;
  output OUT_UNBOUNDED_main_28882_30183;
  // Component and signal declarations
  wire [7:0] null_out_signal_array_28867_0_out1_0;
  wire [7:0] null_out_signal_array_28867_0_out1_1;
  wire [7:0] null_out_signal_array_28868_0_out1_0;
  wire [7:0] null_out_signal_array_28868_0_out1_1;
  wire [7:0] null_out_signal_array_28869_0_out1_0;
  wire [7:0] null_out_signal_array_28869_0_out1_1;
  wire [7:0] null_out_signal_array_28870_0_out1_0;
  wire [7:0] null_out_signal_array_28870_0_out1_1;
  wire signed [1:0] out_IIdata_converter_FU_16_i0_fu_main_28882_30747;
  wire [31:0] out_MUX_27_reg_3_0_0_0;
  wire [13:0] out_UUdata_converter_FU_11_i0_fu_main_28882_30750;
  wire [31:0] out_UUdata_converter_FU_14_i0_fu_main_28882_30160;
  wire [31:0] out_UUdata_converter_FU_7_i0_fu_main_28882_30141;
  wire [31:0] out_UUdata_converter_FU_8_i0_fu_main_28882_30142;
  wire [13:0] out_addr_expr_FU_10_i0_fu_main_28882_30640;
  wire [31:0] out_addr_expr_FU_6_i0_fu_main_28882_30620;
  wire [31:0] out_addr_expr_FU_9_i0_fu_main_28882_30636;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [4:0] out_const_2;
  wire out_const_3;
  wire [4:0] out_const_4;
  wire [7:0] out_const_5;
  wire [11:0] out_const_6;
  wire [13:0] out_const_7;
  wire [13:0] out_const_8;
  wire [13:0] out_conv_out_UUdata_converter_FU_14_i0_fu_main_28882_30160_32_14;
  wire [3:0] out_conv_out_const_2_5_4;
  wire [31:0] out_conv_out_const_6_12_32;
  wire [31:0] out_conv_out_const_7_14_32;
  wire [31:0] out_conv_out_const_8_14_32;
  wire [1:0] out_conv_out_is_connected_23_i0_fu_main_28882_30174_I_8_2;
  wire [13:0] out_conv_out_reg_1_reg_1_32_14;
  wire [31:0] out_conv_out_reg_2_reg_2_14_32;
  wire signed [7:0] out_is_connected_23_i0_fu_main_28882_30174;
  wire [7:0] out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_0;
  wire out_ne_expr_FU_8_0_8_19_i0_fu_main_28882_30739;
  wire out_read_cond_FU_15_i0_fu_main_28882_30163;
  wire out_read_cond_FU_17_i0_fu_main_28882_30175;
  wire [31:0] out_reg_0_reg_0;
  wire [31:0] out_reg_1_reg_1;
  wire [13:0] out_reg_2_reg_2;
  wire [31:0] out_reg_3_reg_3;
  wire [1:0] out_reg_4_reg_4;
  wire out_ui_ne_expr_FU_32_32_32_20_i0_fu_main_28882_30737;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_21_i0_fu_main_28882_30162;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_0_32_22_i0_fu_main_28882_30628;
  wire [7:0] out_vb_assign_conn_obj_1_ASSIGN_VECTOR_BOOL_FU_vb_assign_1;
  wire [15:0] proxy_out1_28867;
  wire [15:0] proxy_out1_28868;
  wire [15:0] proxy_out1_28869;
  wire [15:0] proxy_out1_28870;
  wire s_done_fu_main_28882_30140;
  wire s_done_fu_main_28882_30174;
  wire s_done_fu_main_28882_30183;
  wire [15:0] sig_in_bus_mergerMout_Wdata_ram0_0;
  wire [27:0] sig_in_bus_mergerMout_addr_ram1_0;
  wire [7:0] sig_in_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_bus_mergerMout_we_ram4_0;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_0;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_1;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_2;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_3;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_4;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_0;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_1;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_2;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_3;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_4;
  wire [15:0] sig_in_bus_mergerproxy_in112_0;
  wire [15:0] sig_in_bus_mergerproxy_in112_1;
  wire [15:0] sig_in_bus_mergerproxy_in112_2;
  wire [15:0] sig_in_bus_mergerproxy_in117_0;
  wire [15:0] sig_in_bus_mergerproxy_in122_0;
  wire [15:0] sig_in_bus_mergerproxy_in122_1;
  wire [15:0] sig_in_bus_mergerproxy_in122_2;
  wire [15:0] sig_in_bus_mergerproxy_in17_0;
  wire [15:0] sig_in_bus_mergerproxy_in17_1;
  wire [15:0] sig_in_bus_mergerproxy_in17_2;
  wire [27:0] sig_in_bus_mergerproxy_in213_0;
  wire [27:0] sig_in_bus_mergerproxy_in213_1;
  wire [27:0] sig_in_bus_mergerproxy_in213_2;
  wire [27:0] sig_in_bus_mergerproxy_in218_0;
  wire [27:0] sig_in_bus_mergerproxy_in223_0;
  wire [27:0] sig_in_bus_mergerproxy_in223_1;
  wire [27:0] sig_in_bus_mergerproxy_in223_2;
  wire [27:0] sig_in_bus_mergerproxy_in28_0;
  wire [27:0] sig_in_bus_mergerproxy_in28_1;
  wire [27:0] sig_in_bus_mergerproxy_in28_2;
  wire [7:0] sig_in_bus_mergerproxy_in314_0;
  wire [7:0] sig_in_bus_mergerproxy_in314_1;
  wire [7:0] sig_in_bus_mergerproxy_in314_2;
  wire [7:0] sig_in_bus_mergerproxy_in319_0;
  wire [7:0] sig_in_bus_mergerproxy_in324_0;
  wire [7:0] sig_in_bus_mergerproxy_in324_1;
  wire [7:0] sig_in_bus_mergerproxy_in324_2;
  wire [7:0] sig_in_bus_mergerproxy_in39_0;
  wire [7:0] sig_in_bus_mergerproxy_in39_1;
  wire [7:0] sig_in_bus_mergerproxy_in39_2;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD10_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD10_1;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD10_2;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD15_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD15_1;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD15_2;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD20_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD25_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD25_1;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD25_2;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE11_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE11_1;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE11_2;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE16_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE16_1;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE16_2;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE21_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE26_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE26_1;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE26_2;
  wire [15:0] sig_in_vector_bus_mergerMout_Wdata_ram0_0;
  wire [27:0] sig_in_vector_bus_mergerMout_addr_ram1_0;
  wire [7:0] sig_in_vector_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_vector_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_vector_bus_mergerMout_we_ram4_0;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_0;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_1;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_2;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_3;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_4;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_0;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_1;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_2;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_3;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_4;
  wire [15:0] sig_in_vector_bus_mergerproxy_in112_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in112_1;
  wire [15:0] sig_in_vector_bus_mergerproxy_in112_2;
  wire [15:0] sig_in_vector_bus_mergerproxy_in117_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in122_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in122_1;
  wire [15:0] sig_in_vector_bus_mergerproxy_in122_2;
  wire [15:0] sig_in_vector_bus_mergerproxy_in17_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in17_1;
  wire [15:0] sig_in_vector_bus_mergerproxy_in17_2;
  wire [27:0] sig_in_vector_bus_mergerproxy_in213_0;
  wire [27:0] sig_in_vector_bus_mergerproxy_in213_1;
  wire [27:0] sig_in_vector_bus_mergerproxy_in213_2;
  wire [27:0] sig_in_vector_bus_mergerproxy_in218_0;
  wire [27:0] sig_in_vector_bus_mergerproxy_in223_0;
  wire [27:0] sig_in_vector_bus_mergerproxy_in223_1;
  wire [27:0] sig_in_vector_bus_mergerproxy_in223_2;
  wire [27:0] sig_in_vector_bus_mergerproxy_in28_0;
  wire [27:0] sig_in_vector_bus_mergerproxy_in28_1;
  wire [27:0] sig_in_vector_bus_mergerproxy_in28_2;
  wire [7:0] sig_in_vector_bus_mergerproxy_in314_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in314_1;
  wire [7:0] sig_in_vector_bus_mergerproxy_in314_2;
  wire [7:0] sig_in_vector_bus_mergerproxy_in319_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in324_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in324_1;
  wire [7:0] sig_in_vector_bus_mergerproxy_in324_2;
  wire [7:0] sig_in_vector_bus_mergerproxy_in39_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in39_1;
  wire [7:0] sig_in_vector_bus_mergerproxy_in39_2;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD10_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD10_1;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD10_2;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD15_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD15_1;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD15_2;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD20_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD25_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD25_1;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD25_2;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE11_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE11_1;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE11_2;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE16_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE16_1;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE16_2;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE21_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE26_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE26_1;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE26_2;
  wire [15:0] sig_out_bus_mergerMout_Wdata_ram0_;
  wire [27:0] sig_out_bus_mergerMout_addr_ram1_;
  wire [7:0] sig_out_bus_mergerMout_data_ram_size2_;
  wire [1:0] sig_out_bus_mergerMout_oe_ram3_;
  wire [1:0] sig_out_bus_mergerMout_we_ram4_;
  wire [1:0] sig_out_bus_mergerSout_DataRdy5_;
  wire [15:0] sig_out_bus_mergerSout_Rdata_ram6_;
  wire [15:0] sig_out_bus_mergerproxy_in112_;
  wire [15:0] sig_out_bus_mergerproxy_in117_;
  wire [15:0] sig_out_bus_mergerproxy_in122_;
  wire [15:0] sig_out_bus_mergerproxy_in17_;
  wire [27:0] sig_out_bus_mergerproxy_in213_;
  wire [27:0] sig_out_bus_mergerproxy_in218_;
  wire [27:0] sig_out_bus_mergerproxy_in223_;
  wire [27:0] sig_out_bus_mergerproxy_in28_;
  wire [7:0] sig_out_bus_mergerproxy_in314_;
  wire [7:0] sig_out_bus_mergerproxy_in319_;
  wire [7:0] sig_out_bus_mergerproxy_in324_;
  wire [7:0] sig_out_bus_mergerproxy_in39_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD10_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD15_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD20_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD25_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE11_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE16_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE21_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE26_;
  wire [15:0] sig_out_vector_bus_mergerproxy_in112_;
  wire [15:0] sig_out_vector_bus_mergerproxy_in117_;
  wire [15:0] sig_out_vector_bus_mergerproxy_in122_;
  wire [15:0] sig_out_vector_bus_mergerproxy_in17_;
  wire [27:0] sig_out_vector_bus_mergerproxy_in213_;
  wire [27:0] sig_out_vector_bus_mergerproxy_in218_;
  wire [27:0] sig_out_vector_bus_mergerproxy_in223_;
  wire [27:0] sig_out_vector_bus_mergerproxy_in28_;
  wire [7:0] sig_out_vector_bus_mergerproxy_in314_;
  wire [7:0] sig_out_vector_bus_mergerproxy_in319_;
  wire [7:0] sig_out_vector_bus_mergerproxy_in324_;
  wire [7:0] sig_out_vector_bus_mergerproxy_in39_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_LOAD10_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_LOAD15_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_LOAD20_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_LOAD25_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_STORE11_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_STORE16_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_STORE21_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_STORE26_;
  
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_1 (.out1(out_vb_assign_conn_obj_1_ASSIGN_VECTOR_BOOL_FU_vb_assign_1), .in1(out_const_1));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_0 (.out1(out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_0), .in1(out_const_5));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_27_reg_3_0_0_0 (.out1(out_MUX_27_reg_3_0_0_0), .sel(selector_MUX_27_reg_3_0_0_0), .in1(out_UUdata_converter_FU_7_i0_fu_main_28882_30141), .in2(out_ui_plus_expr_FU_32_0_32_21_i0_fu_main_28882_30162));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(14), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(14), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28867.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28867_28882), .address_space_rangesize(1024), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(14), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28867_0 (.out1({null_out_signal_array_28867_0_out1_1, null_out_signal_array_28867_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_0), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_0), .proxy_out1(proxy_out1_28867), .clock(clock), .reset(reset), .in1({8'b00000000, 8'b00000000}), .in2({14'b00000000000000, 14'b00000000000000}), .in3({4'b0000, 4'b0000}), .in4({1'b0, 1'b0}), .sel_LOAD({1'b0, 1'b0}), .sel_STORE({1'b0, 1'b0}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_vector_bus_mergerproxy_in17_), .proxy_in2(sig_out_vector_bus_mergerproxy_in28_), .proxy_in3(sig_out_vector_bus_mergerproxy_in39_), .proxy_sel_LOAD(sig_out_vector_bus_mergerproxy_sel_LOAD10_), .proxy_sel_STORE(sig_out_vector_bus_mergerproxy_sel_STORE11_));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(14), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(14), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28868.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28868_28882), .address_space_rangesize(1024), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(14), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28868_0 (.out1({null_out_signal_array_28868_0_out1_1, null_out_signal_array_28868_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_1), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_1), .proxy_out1(proxy_out1_28868), .clock(clock), .reset(reset), .in1({8'b00000000, out_vb_assign_conn_obj_1_ASSIGN_VECTOR_BOOL_FU_vb_assign_1}), .in2({14'b00000000000000, out_conv_out_reg_1_reg_1_32_14}), .in3({4'b0000, out_conv_out_const_2_5_4}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_vector_bus_mergerproxy_in112_), .proxy_in2(sig_out_vector_bus_mergerproxy_in213_), .proxy_in3(sig_out_vector_bus_mergerproxy_in314_), .proxy_sel_LOAD(sig_out_vector_bus_mergerproxy_sel_LOAD15_), .proxy_sel_STORE(sig_out_vector_bus_mergerproxy_sel_STORE16_));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(14), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(14), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28869.mem"), .n_elements(25), .data_size(8), .address_space_begin(MEM_var_28869_28882), .address_space_rangesize(1024), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(14), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28869_0 (.out1({null_out_signal_array_28869_0_out1_1, null_out_signal_array_28869_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_2), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_2), .proxy_out1(proxy_out1_28869), .clock(clock), .reset(reset), .in1({8'b00000000, out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_0}), .in2({14'b00000000000000, out_conv_out_UUdata_converter_FU_14_i0_fu_main_28882_30160_32_14}), .in3({4'b0000, out_conv_out_const_2_5_4}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_vector_bus_mergerproxy_in117_), .proxy_in2(sig_out_vector_bus_mergerproxy_in218_), .proxy_in3(sig_out_vector_bus_mergerproxy_in319_), .proxy_sel_LOAD(sig_out_vector_bus_mergerproxy_sel_LOAD20_), .proxy_sel_STORE(sig_out_vector_bus_mergerproxy_sel_STORE21_));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(14), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(14), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28870.mem"), .n_elements(625), .data_size(8), .address_space_begin(MEM_var_28870_28882), .address_space_rangesize(1024), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(14), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28870_0 (.out1({null_out_signal_array_28870_0_out1_1, null_out_signal_array_28870_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_3), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_3), .proxy_out1(proxy_out1_28870), .clock(clock), .reset(reset), .in1({8'b00000000, 8'b00000000}), .in2({14'b00000000000000, 14'b00000000000000}), .in3({4'b0000, 4'b0000}), .in4({1'b0, 1'b0}), .sel_LOAD({1'b0, 1'b0}), .sel_STORE({1'b0, 1'b0}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_vector_bus_mergerproxy_in122_), .proxy_in2(sig_out_vector_bus_mergerproxy_in223_), .proxy_in3(sig_out_vector_bus_mergerproxy_in324_), .proxy_sel_LOAD(sig_out_vector_bus_mergerproxy_sel_LOAD25_), .proxy_sel_STORE(sig_out_vector_bus_mergerproxy_sel_STORE26_));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(28), .PORTSIZE_in1(1), .BITSIZE_out1(28)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerMout_data_ram_size2_ (.out1(sig_out_bus_mergerMout_data_ram_size2_), .in1({sig_in_bus_mergerMout_data_ram_size2_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_oe_ram3_ (.out1(sig_out_bus_mergerMout_oe_ram3_), .in1({sig_in_bus_mergerMout_oe_ram3_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_we_ram4_ (.out1(sig_out_bus_mergerMout_we_ram4_), .in1({sig_in_bus_mergerMout_we_ram4_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(5), .BITSIZE_out1(2)) bus_mergerSout_DataRdy5_ (.out1(sig_out_bus_mergerSout_DataRdy5_), .in1({sig_in_bus_mergerSout_DataRdy5_4, sig_in_bus_mergerSout_DataRdy5_3, sig_in_bus_mergerSout_DataRdy5_2, sig_in_bus_mergerSout_DataRdy5_1, sig_in_bus_mergerSout_DataRdy5_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(5), .BITSIZE_out1(16)) bus_mergerSout_Rdata_ram6_ (.out1(sig_out_bus_mergerSout_Rdata_ram6_), .in1({sig_in_bus_mergerSout_Rdata_ram6_4, sig_in_bus_mergerSout_Rdata_ram6_3, sig_in_bus_mergerSout_Rdata_ram6_2, sig_in_bus_mergerSout_Rdata_ram6_1, sig_in_bus_mergerSout_Rdata_ram6_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(3), .BITSIZE_out1(16)) bus_mergerproxy_in112_ (.out1(sig_out_bus_mergerproxy_in112_), .in1({sig_in_bus_mergerproxy_in112_2, sig_in_bus_mergerproxy_in112_1, sig_in_bus_mergerproxy_in112_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in117_ (.out1(sig_out_bus_mergerproxy_in117_), .in1({sig_in_bus_mergerproxy_in117_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(3), .BITSIZE_out1(16)) bus_mergerproxy_in122_ (.out1(sig_out_bus_mergerproxy_in122_), .in1({sig_in_bus_mergerproxy_in122_2, sig_in_bus_mergerproxy_in122_1, sig_in_bus_mergerproxy_in122_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(3), .BITSIZE_out1(16)) bus_mergerproxy_in17_ (.out1(sig_out_bus_mergerproxy_in17_), .in1({sig_in_bus_mergerproxy_in17_2, sig_in_bus_mergerproxy_in17_1, sig_in_bus_mergerproxy_in17_0}));
  bus_merger #(.BITSIZE_in1(28), .PORTSIZE_in1(3), .BITSIZE_out1(28)) bus_mergerproxy_in213_ (.out1(sig_out_bus_mergerproxy_in213_), .in1({sig_in_bus_mergerproxy_in213_2, sig_in_bus_mergerproxy_in213_1, sig_in_bus_mergerproxy_in213_0}));
  bus_merger #(.BITSIZE_in1(28), .PORTSIZE_in1(1), .BITSIZE_out1(28)) bus_mergerproxy_in218_ (.out1(sig_out_bus_mergerproxy_in218_), .in1({sig_in_bus_mergerproxy_in218_0}));
  bus_merger #(.BITSIZE_in1(28), .PORTSIZE_in1(3), .BITSIZE_out1(28)) bus_mergerproxy_in223_ (.out1(sig_out_bus_mergerproxy_in223_), .in1({sig_in_bus_mergerproxy_in223_2, sig_in_bus_mergerproxy_in223_1, sig_in_bus_mergerproxy_in223_0}));
  bus_merger #(.BITSIZE_in1(28), .PORTSIZE_in1(3), .BITSIZE_out1(28)) bus_mergerproxy_in28_ (.out1(sig_out_bus_mergerproxy_in28_), .in1({sig_in_bus_mergerproxy_in28_2, sig_in_bus_mergerproxy_in28_1, sig_in_bus_mergerproxy_in28_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(3), .BITSIZE_out1(8)) bus_mergerproxy_in314_ (.out1(sig_out_bus_mergerproxy_in314_), .in1({sig_in_bus_mergerproxy_in314_2, sig_in_bus_mergerproxy_in314_1, sig_in_bus_mergerproxy_in314_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in319_ (.out1(sig_out_bus_mergerproxy_in319_), .in1({sig_in_bus_mergerproxy_in319_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(3), .BITSIZE_out1(8)) bus_mergerproxy_in324_ (.out1(sig_out_bus_mergerproxy_in324_), .in1({sig_in_bus_mergerproxy_in324_2, sig_in_bus_mergerproxy_in324_1, sig_in_bus_mergerproxy_in324_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(3), .BITSIZE_out1(8)) bus_mergerproxy_in39_ (.out1(sig_out_bus_mergerproxy_in39_), .in1({sig_in_bus_mergerproxy_in39_2, sig_in_bus_mergerproxy_in39_1, sig_in_bus_mergerproxy_in39_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(3), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD10_ (.out1(sig_out_bus_mergerproxy_sel_LOAD10_), .in1({sig_in_bus_mergerproxy_sel_LOAD10_2, sig_in_bus_mergerproxy_sel_LOAD10_1, sig_in_bus_mergerproxy_sel_LOAD10_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(3), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD15_ (.out1(sig_out_bus_mergerproxy_sel_LOAD15_), .in1({sig_in_bus_mergerproxy_sel_LOAD15_2, sig_in_bus_mergerproxy_sel_LOAD15_1, sig_in_bus_mergerproxy_sel_LOAD15_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD20_ (.out1(sig_out_bus_mergerproxy_sel_LOAD20_), .in1({sig_in_bus_mergerproxy_sel_LOAD20_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(3), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD25_ (.out1(sig_out_bus_mergerproxy_sel_LOAD25_), .in1({sig_in_bus_mergerproxy_sel_LOAD25_2, sig_in_bus_mergerproxy_sel_LOAD25_1, sig_in_bus_mergerproxy_sel_LOAD25_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(3), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE11_ (.out1(sig_out_bus_mergerproxy_sel_STORE11_), .in1({sig_in_bus_mergerproxy_sel_STORE11_2, sig_in_bus_mergerproxy_sel_STORE11_1, sig_in_bus_mergerproxy_sel_STORE11_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(3), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE16_ (.out1(sig_out_bus_mergerproxy_sel_STORE16_), .in1({sig_in_bus_mergerproxy_sel_STORE16_2, sig_in_bus_mergerproxy_sel_STORE16_1, sig_in_bus_mergerproxy_sel_STORE16_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE21_ (.out1(sig_out_bus_mergerproxy_sel_STORE21_), .in1({sig_in_bus_mergerproxy_sel_STORE21_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(3), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE26_ (.out1(sig_out_bus_mergerproxy_sel_STORE26_), .in1({sig_in_bus_mergerproxy_sel_STORE26_2, sig_in_bus_mergerproxy_sel_STORE26_1, sig_in_bus_mergerproxy_sel_STORE26_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00011001)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(5), .value(5'b11001)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(8), .value(8'b11111111)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(12), .value(MEM_var_28868_28882)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(14), .value(MEM_var_28869_28882)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(14), .value(MEM_var_28870_28882)) const_8 (.out1(out_const_8));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(14)) conv_out_UUdata_converter_FU_14_i0_fu_main_28882_30160_32_14 (.out1(out_conv_out_UUdata_converter_FU_14_i0_fu_main_28882_30160_32_14), .in1(out_UUdata_converter_FU_14_i0_fu_main_28882_30160));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_2_5_4 (.out1(out_conv_out_const_2_5_4), .in1(out_const_2));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(32)) conv_out_const_6_12_32 (.out1(out_conv_out_const_6_12_32), .in1(out_const_6));
  UUdata_converter_FU #(.BITSIZE_in1(14), .BITSIZE_out1(32)) conv_out_const_7_14_32 (.out1(out_conv_out_const_7_14_32), .in1(out_const_7));
  UUdata_converter_FU #(.BITSIZE_in1(14), .BITSIZE_out1(32)) conv_out_const_8_14_32 (.out1(out_conv_out_const_8_14_32), .in1(out_const_8));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(2)) conv_out_is_connected_23_i0_fu_main_28882_30174_I_8_2 (.out1(out_conv_out_is_connected_23_i0_fu_main_28882_30174_I_8_2), .in1(out_is_connected_23_i0_fu_main_28882_30174));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(14)) conv_out_reg_1_reg_1_32_14 (.out1(out_conv_out_reg_1_reg_1_32_14), .in1(out_reg_1_reg_1));
  UUdata_converter_FU #(.BITSIZE_in1(14), .BITSIZE_out1(32)) conv_out_reg_2_reg_2_14_32 (.out1(out_conv_out_reg_2_reg_2_14_32), .in1(out_reg_2_reg_2));
  make_non_oriented #(.MEM_var_28867_28882(MEM_var_28867_28882), .MEM_var_28868_28882(MEM_var_28868_28882), .MEM_var_28870_28882(MEM_var_28870_28882)) fu_main_28882_30140 (.done_port(s_done_fu_main_28882_30140), .proxy_in1_28867(sig_in_vector_bus_mergerproxy_in17_2), .proxy_in2_28867(sig_in_vector_bus_mergerproxy_in28_2), .proxy_in3_28867(sig_in_vector_bus_mergerproxy_in39_2), .proxy_sel_LOAD_28867(sig_in_vector_bus_mergerproxy_sel_LOAD10_2), .proxy_sel_STORE_28867(sig_in_vector_bus_mergerproxy_sel_STORE11_2), .proxy_in1_28868(sig_in_vector_bus_mergerproxy_in112_2), .proxy_in2_28868(sig_in_vector_bus_mergerproxy_in213_2), .proxy_in3_28868(sig_in_vector_bus_mergerproxy_in314_2), .proxy_sel_LOAD_28868(sig_in_vector_bus_mergerproxy_sel_LOAD15_2), .proxy_sel_STORE_28868(sig_in_vector_bus_mergerproxy_sel_STORE16_2), .proxy_in1_28870(sig_in_vector_bus_mergerproxy_in122_2), .proxy_in2_28870(sig_in_vector_bus_mergerproxy_in223_2), .proxy_in3_28870(sig_in_vector_bus_mergerproxy_in324_2), .proxy_sel_LOAD_28870(sig_in_vector_bus_mergerproxy_sel_LOAD25_2), .proxy_sel_STORE_28870(sig_in_vector_bus_mergerproxy_sel_STORE26_2), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28882_30140), .proxy_out1_28867(proxy_out1_28867), .proxy_out1_28868(proxy_out1_28868), .proxy_out1_28870(proxy_out1_28870));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_main_28882_30141 (.out1(out_UUdata_converter_FU_7_i0_fu_main_28882_30141), .in1(out_addr_expr_FU_6_i0_fu_main_28882_30620));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_main_28882_30142 (.out1(out_UUdata_converter_FU_8_i0_fu_main_28882_30142), .in1(out_ui_pointer_plus_expr_FU_32_0_32_22_i0_fu_main_28882_30628));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_main_28882_30160 (.out1(out_UUdata_converter_FU_14_i0_fu_main_28882_30160), .in1(out_reg_3_reg_3));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(32)) fu_main_28882_30162 (.out1(out_ui_plus_expr_FU_32_0_32_21_i0_fu_main_28882_30162), .in1(out_reg_3_reg_3), .in2(out_const_3));
  read_cond_FU #(.BITSIZE_in1(1)) fu_main_28882_30163 (.out1(out_read_cond_FU_15_i0_fu_main_28882_30163), .in1(out_ui_ne_expr_FU_32_32_32_20_i0_fu_main_28882_30737));
  is_connected #(.MEM_var_28867_28882(MEM_var_28867_28882), .MEM_var_28868_28882(MEM_var_28868_28882), .MEM_var_28870_28882(MEM_var_28870_28882)) fu_main_28882_30174 (.done_port(s_done_fu_main_28882_30174), .return_port(out_is_connected_23_i0_fu_main_28882_30174), .proxy_in1_28867(sig_in_vector_bus_mergerproxy_in17_0), .proxy_in2_28867(sig_in_vector_bus_mergerproxy_in28_0), .proxy_in3_28867(sig_in_vector_bus_mergerproxy_in39_0), .proxy_sel_LOAD_28867(sig_in_vector_bus_mergerproxy_sel_LOAD10_0), .proxy_sel_STORE_28867(sig_in_vector_bus_mergerproxy_sel_STORE11_0), .proxy_in1_28868(sig_in_vector_bus_mergerproxy_in112_0), .proxy_in2_28868(sig_in_vector_bus_mergerproxy_in213_0), .proxy_in3_28868(sig_in_vector_bus_mergerproxy_in314_0), .proxy_sel_LOAD_28868(sig_in_vector_bus_mergerproxy_sel_LOAD15_0), .proxy_sel_STORE_28868(sig_in_vector_bus_mergerproxy_sel_STORE16_0), .proxy_in1_28870(sig_in_vector_bus_mergerproxy_in122_0), .proxy_in2_28870(sig_in_vector_bus_mergerproxy_in223_0), .proxy_in3_28870(sig_in_vector_bus_mergerproxy_in324_0), .proxy_sel_LOAD_28870(sig_in_vector_bus_mergerproxy_sel_LOAD25_0), .proxy_sel_STORE_28870(sig_in_vector_bus_mergerproxy_sel_STORE26_0), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28882_30174), .proxy_out1_28867(proxy_out1_28867), .proxy_out1_28868(proxy_out1_28868), .proxy_out1_28870(proxy_out1_28870));
  read_cond_FU #(.BITSIZE_in1(1)) fu_main_28882_30175 (.out1(out_read_cond_FU_17_i0_fu_main_28882_30175), .in1(out_ne_expr_FU_8_0_8_19_i0_fu_main_28882_30739));
  kruskalF #(.MEM_var_28859_28880(MEM_var_28859_28880), .MEM_var_28861_28880(MEM_var_28861_28880), .MEM_var_28862_28880(MEM_var_28862_28880), .MEM_var_28864_28880(MEM_var_28864_28880), .MEM_var_28865_28880(MEM_var_28865_28880), .MEM_var_28866_28880(MEM_var_28866_28880), .MEM_var_28867_28882(MEM_var_28867_28882), .MEM_var_28868_28882(MEM_var_28868_28882), .MEM_var_28869_28882(MEM_var_28869_28882), .MEM_var_28870_28882(MEM_var_28870_28882)) fu_main_28882_30183 (.done_port(s_done_fu_main_28882_30183), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_4), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_4), .proxy_in1_28867(sig_in_vector_bus_mergerproxy_in17_1), .proxy_in2_28867(sig_in_vector_bus_mergerproxy_in28_1), .proxy_in3_28867(sig_in_vector_bus_mergerproxy_in39_1), .proxy_sel_LOAD_28867(sig_in_vector_bus_mergerproxy_sel_LOAD10_1), .proxy_sel_STORE_28867(sig_in_vector_bus_mergerproxy_sel_STORE11_1), .proxy_in1_28868(sig_in_vector_bus_mergerproxy_in112_1), .proxy_in2_28868(sig_in_vector_bus_mergerproxy_in213_1), .proxy_in3_28868(sig_in_vector_bus_mergerproxy_in314_1), .proxy_sel_LOAD_28868(sig_in_vector_bus_mergerproxy_sel_LOAD15_1), .proxy_sel_STORE_28868(sig_in_vector_bus_mergerproxy_sel_STORE16_1), .proxy_in1_28869(sig_in_vector_bus_mergerproxy_in117_0), .proxy_in2_28869(sig_in_vector_bus_mergerproxy_in218_0), .proxy_in3_28869(sig_in_vector_bus_mergerproxy_in319_0), .proxy_sel_LOAD_28869(sig_in_vector_bus_mergerproxy_sel_LOAD20_0), .proxy_sel_STORE_28869(sig_in_vector_bus_mergerproxy_sel_STORE21_0), .proxy_in1_28870(sig_in_vector_bus_mergerproxy_in122_1), .proxy_in2_28870(sig_in_vector_bus_mergerproxy_in223_1), .proxy_in3_28870(sig_in_vector_bus_mergerproxy_in324_1), .proxy_sel_LOAD_28870(sig_in_vector_bus_mergerproxy_sel_LOAD25_1), .proxy_sel_STORE_28870(sig_in_vector_bus_mergerproxy_sel_STORE26_1), .Mout_oe_ram(sig_in_vector_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_vector_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_vector_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_vector_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_vector_bus_mergerMout_data_ram_size2_0), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28882_30183), .a(out_conv_out_reg_2_reg_2_14_32), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28867(proxy_out1_28867), .proxy_out1_28868(proxy_out1_28868), .proxy_out1_28869(proxy_out1_28869), .proxy_out1_28870(proxy_out1_28870), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_main_28882_30620 (.out1(out_addr_expr_FU_6_i0_fu_main_28882_30620), .in1(out_conv_out_const_7_14_32));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(5), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_main_28882_30628 (.out1(out_ui_pointer_plus_expr_FU_32_0_32_22_i0_fu_main_28882_30628), .in1(out_addr_expr_FU_6_i0_fu_main_28882_30620), .in2(out_const_4));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_main_28882_30636 (.out1(out_addr_expr_FU_9_i0_fu_main_28882_30636), .in1(out_conv_out_const_6_12_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(14)) fu_main_28882_30640 (.out1(out_addr_expr_FU_10_i0_fu_main_28882_30640), .in1(out_conv_out_const_8_14_32));
  ui_ne_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(1)) fu_main_28882_30737 (.out1(out_ui_ne_expr_FU_32_32_32_20_i0_fu_main_28882_30737), .in1(out_ui_plus_expr_FU_32_0_32_21_i0_fu_main_28882_30162), .in2(out_reg_0_reg_0));
  ne_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_main_28882_30739 (.out1(out_ne_expr_FU_8_0_8_19_i0_fu_main_28882_30739), .in1(out_IIdata_converter_FU_16_i0_fu_main_28882_30747), .in2(out_const_0));
  IIdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(2)) fu_main_28882_30747 (.out1(out_IIdata_converter_FU_16_i0_fu_main_28882_30747), .in1(out_reg_4_reg_4));
  UUdata_converter_FU #(.BITSIZE_in1(14), .BITSIZE_out1(14)) fu_main_28882_30750 (.out1(out_UUdata_converter_FU_11_i0_fu_main_28882_30750), .in1(out_addr_expr_FU_10_i0_fu_main_28882_30640));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerMout_Wdata_ram0_0 (.out1(sig_in_bus_mergerMout_Wdata_ram0_0), .in1(sig_in_vector_bus_mergerMout_Wdata_ram0_0));
  join_signal #(.BITSIZE_in1(14), .PORTSIZE_in1(2), .BITSIZE_out1(28)) join_signalbus_mergerMout_addr_ram1_0 (.out1(sig_in_bus_mergerMout_addr_ram1_0), .in1(sig_in_vector_bus_mergerMout_addr_ram1_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerMout_data_ram_size2_0 (.out1(sig_in_bus_mergerMout_data_ram_size2_0), .in1(sig_in_vector_bus_mergerMout_data_ram_size2_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_oe_ram3_0 (.out1(sig_in_bus_mergerMout_oe_ram3_0), .in1(sig_in_vector_bus_mergerMout_oe_ram3_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_we_ram4_0 (.out1(sig_in_bus_mergerMout_we_ram4_0), .in1(sig_in_vector_bus_mergerMout_we_ram4_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_0 (.out1(sig_in_bus_mergerSout_DataRdy5_0), .in1(sig_in_vector_bus_mergerSout_DataRdy5_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_1 (.out1(sig_in_bus_mergerSout_DataRdy5_1), .in1(sig_in_vector_bus_mergerSout_DataRdy5_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_2 (.out1(sig_in_bus_mergerSout_DataRdy5_2), .in1(sig_in_vector_bus_mergerSout_DataRdy5_2));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_3 (.out1(sig_in_bus_mergerSout_DataRdy5_3), .in1(sig_in_vector_bus_mergerSout_DataRdy5_3));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_4 (.out1(sig_in_bus_mergerSout_DataRdy5_4), .in1(sig_in_vector_bus_mergerSout_DataRdy5_4));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_0 (.out1(sig_in_bus_mergerSout_Rdata_ram6_0), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_1 (.out1(sig_in_bus_mergerSout_Rdata_ram6_1), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_1));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_2 (.out1(sig_in_bus_mergerSout_Rdata_ram6_2), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_2));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_3 (.out1(sig_in_bus_mergerSout_Rdata_ram6_3), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_3));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_4 (.out1(sig_in_bus_mergerSout_Rdata_ram6_4), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_4));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in112_0 (.out1(sig_in_bus_mergerproxy_in112_0), .in1(sig_in_vector_bus_mergerproxy_in112_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in112_1 (.out1(sig_in_bus_mergerproxy_in112_1), .in1(sig_in_vector_bus_mergerproxy_in112_1));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in112_2 (.out1(sig_in_bus_mergerproxy_in112_2), .in1(sig_in_vector_bus_mergerproxy_in112_2));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in117_0 (.out1(sig_in_bus_mergerproxy_in117_0), .in1(sig_in_vector_bus_mergerproxy_in117_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in122_0 (.out1(sig_in_bus_mergerproxy_in122_0), .in1(sig_in_vector_bus_mergerproxy_in122_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in122_1 (.out1(sig_in_bus_mergerproxy_in122_1), .in1(sig_in_vector_bus_mergerproxy_in122_1));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in122_2 (.out1(sig_in_bus_mergerproxy_in122_2), .in1(sig_in_vector_bus_mergerproxy_in122_2));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in17_0 (.out1(sig_in_bus_mergerproxy_in17_0), .in1(sig_in_vector_bus_mergerproxy_in17_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in17_1 (.out1(sig_in_bus_mergerproxy_in17_1), .in1(sig_in_vector_bus_mergerproxy_in17_1));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in17_2 (.out1(sig_in_bus_mergerproxy_in17_2), .in1(sig_in_vector_bus_mergerproxy_in17_2));
  join_signal #(.BITSIZE_in1(14), .PORTSIZE_in1(2), .BITSIZE_out1(28)) join_signalbus_mergerproxy_in213_0 (.out1(sig_in_bus_mergerproxy_in213_0), .in1(sig_in_vector_bus_mergerproxy_in213_0));
  join_signal #(.BITSIZE_in1(14), .PORTSIZE_in1(2), .BITSIZE_out1(28)) join_signalbus_mergerproxy_in213_1 (.out1(sig_in_bus_mergerproxy_in213_1), .in1(sig_in_vector_bus_mergerproxy_in213_1));
  join_signal #(.BITSIZE_in1(14), .PORTSIZE_in1(2), .BITSIZE_out1(28)) join_signalbus_mergerproxy_in213_2 (.out1(sig_in_bus_mergerproxy_in213_2), .in1(sig_in_vector_bus_mergerproxy_in213_2));
  join_signal #(.BITSIZE_in1(14), .PORTSIZE_in1(2), .BITSIZE_out1(28)) join_signalbus_mergerproxy_in218_0 (.out1(sig_in_bus_mergerproxy_in218_0), .in1(sig_in_vector_bus_mergerproxy_in218_0));
  join_signal #(.BITSIZE_in1(14), .PORTSIZE_in1(2), .BITSIZE_out1(28)) join_signalbus_mergerproxy_in223_0 (.out1(sig_in_bus_mergerproxy_in223_0), .in1(sig_in_vector_bus_mergerproxy_in223_0));
  join_signal #(.BITSIZE_in1(14), .PORTSIZE_in1(2), .BITSIZE_out1(28)) join_signalbus_mergerproxy_in223_1 (.out1(sig_in_bus_mergerproxy_in223_1), .in1(sig_in_vector_bus_mergerproxy_in223_1));
  join_signal #(.BITSIZE_in1(14), .PORTSIZE_in1(2), .BITSIZE_out1(28)) join_signalbus_mergerproxy_in223_2 (.out1(sig_in_bus_mergerproxy_in223_2), .in1(sig_in_vector_bus_mergerproxy_in223_2));
  join_signal #(.BITSIZE_in1(14), .PORTSIZE_in1(2), .BITSIZE_out1(28)) join_signalbus_mergerproxy_in28_0 (.out1(sig_in_bus_mergerproxy_in28_0), .in1(sig_in_vector_bus_mergerproxy_in28_0));
  join_signal #(.BITSIZE_in1(14), .PORTSIZE_in1(2), .BITSIZE_out1(28)) join_signalbus_mergerproxy_in28_1 (.out1(sig_in_bus_mergerproxy_in28_1), .in1(sig_in_vector_bus_mergerproxy_in28_1));
  join_signal #(.BITSIZE_in1(14), .PORTSIZE_in1(2), .BITSIZE_out1(28)) join_signalbus_mergerproxy_in28_2 (.out1(sig_in_bus_mergerproxy_in28_2), .in1(sig_in_vector_bus_mergerproxy_in28_2));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in314_0 (.out1(sig_in_bus_mergerproxy_in314_0), .in1(sig_in_vector_bus_mergerproxy_in314_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in314_1 (.out1(sig_in_bus_mergerproxy_in314_1), .in1(sig_in_vector_bus_mergerproxy_in314_1));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in314_2 (.out1(sig_in_bus_mergerproxy_in314_2), .in1(sig_in_vector_bus_mergerproxy_in314_2));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in319_0 (.out1(sig_in_bus_mergerproxy_in319_0), .in1(sig_in_vector_bus_mergerproxy_in319_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in324_0 (.out1(sig_in_bus_mergerproxy_in324_0), .in1(sig_in_vector_bus_mergerproxy_in324_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in324_1 (.out1(sig_in_bus_mergerproxy_in324_1), .in1(sig_in_vector_bus_mergerproxy_in324_1));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in324_2 (.out1(sig_in_bus_mergerproxy_in324_2), .in1(sig_in_vector_bus_mergerproxy_in324_2));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in39_0 (.out1(sig_in_bus_mergerproxy_in39_0), .in1(sig_in_vector_bus_mergerproxy_in39_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in39_1 (.out1(sig_in_bus_mergerproxy_in39_1), .in1(sig_in_vector_bus_mergerproxy_in39_1));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in39_2 (.out1(sig_in_bus_mergerproxy_in39_2), .in1(sig_in_vector_bus_mergerproxy_in39_2));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD10_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD10_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD10_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD10_1 (.out1(sig_in_bus_mergerproxy_sel_LOAD10_1), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD10_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD10_2 (.out1(sig_in_bus_mergerproxy_sel_LOAD10_2), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD10_2));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD15_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD15_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD15_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD15_1 (.out1(sig_in_bus_mergerproxy_sel_LOAD15_1), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD15_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD15_2 (.out1(sig_in_bus_mergerproxy_sel_LOAD15_2), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD15_2));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD20_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD20_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD20_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD25_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD25_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD25_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD25_1 (.out1(sig_in_bus_mergerproxy_sel_LOAD25_1), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD25_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD25_2 (.out1(sig_in_bus_mergerproxy_sel_LOAD25_2), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD25_2));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE11_0 (.out1(sig_in_bus_mergerproxy_sel_STORE11_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE11_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE11_1 (.out1(sig_in_bus_mergerproxy_sel_STORE11_1), .in1(sig_in_vector_bus_mergerproxy_sel_STORE11_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE11_2 (.out1(sig_in_bus_mergerproxy_sel_STORE11_2), .in1(sig_in_vector_bus_mergerproxy_sel_STORE11_2));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE16_0 (.out1(sig_in_bus_mergerproxy_sel_STORE16_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE16_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE16_1 (.out1(sig_in_bus_mergerproxy_sel_STORE16_1), .in1(sig_in_vector_bus_mergerproxy_sel_STORE16_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE16_2 (.out1(sig_in_bus_mergerproxy_sel_STORE16_2), .in1(sig_in_vector_bus_mergerproxy_sel_STORE16_2));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE21_0 (.out1(sig_in_bus_mergerproxy_sel_STORE21_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE21_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE26_0 (.out1(sig_in_bus_mergerproxy_sel_STORE26_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE26_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE26_1 (.out1(sig_in_bus_mergerproxy_sel_STORE26_1), .in1(sig_in_vector_bus_mergerproxy_sel_STORE26_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE26_2 (.out1(sig_in_bus_mergerproxy_sel_STORE26_2), .in1(sig_in_vector_bus_mergerproxy_sel_STORE26_2));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_8_i0_fu_main_28882_30142), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_9_i0_fu_main_28882_30636), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(14), .BITSIZE_out1(14)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_11_i0_fu_main_28882_30750), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_MUX_27_reg_3_0_0_0), .wenable(wrenable_reg_3));
  register_SE #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_conv_out_is_connected_23_i0_fu_main_28882_30174_I_8_2), .wenable(wrenable_reg_4));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerMout_Wdata_ram0_ (.out1(Mout_Wdata_ram), .in1(sig_out_bus_mergerMout_Wdata_ram0_));
  split_signal #(.BITSIZE_in1(28), .BITSIZE_out1(14), .PORTSIZE_out1(2)) split_signalbus_mergerMout_addr_ram1_ (.out1(Mout_addr_ram), .in1(sig_out_bus_mergerMout_addr_ram1_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerMout_data_ram_size2_ (.out1(Mout_data_ram_size), .in1(sig_out_bus_mergerMout_data_ram_size2_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_oe_ram3_ (.out1(Mout_oe_ram), .in1(sig_out_bus_mergerMout_oe_ram3_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_we_ram4_ (.out1(Mout_we_ram), .in1(sig_out_bus_mergerMout_we_ram4_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerSout_DataRdy5_ (.out1(Sout_DataRdy), .in1(sig_out_bus_mergerSout_DataRdy5_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerSout_Rdata_ram6_ (.out1(Sout_Rdata_ram), .in1(sig_out_bus_mergerSout_Rdata_ram6_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in112_ (.out1(sig_out_vector_bus_mergerproxy_in112_), .in1(sig_out_bus_mergerproxy_in112_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in117_ (.out1(sig_out_vector_bus_mergerproxy_in117_), .in1(sig_out_bus_mergerproxy_in117_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in122_ (.out1(sig_out_vector_bus_mergerproxy_in122_), .in1(sig_out_bus_mergerproxy_in122_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in17_ (.out1(sig_out_vector_bus_mergerproxy_in17_), .in1(sig_out_bus_mergerproxy_in17_));
  split_signal #(.BITSIZE_in1(28), .BITSIZE_out1(14), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in213_ (.out1(sig_out_vector_bus_mergerproxy_in213_), .in1(sig_out_bus_mergerproxy_in213_));
  split_signal #(.BITSIZE_in1(28), .BITSIZE_out1(14), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in218_ (.out1(sig_out_vector_bus_mergerproxy_in218_), .in1(sig_out_bus_mergerproxy_in218_));
  split_signal #(.BITSIZE_in1(28), .BITSIZE_out1(14), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in223_ (.out1(sig_out_vector_bus_mergerproxy_in223_), .in1(sig_out_bus_mergerproxy_in223_));
  split_signal #(.BITSIZE_in1(28), .BITSIZE_out1(14), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in28_ (.out1(sig_out_vector_bus_mergerproxy_in28_), .in1(sig_out_bus_mergerproxy_in28_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in314_ (.out1(sig_out_vector_bus_mergerproxy_in314_), .in1(sig_out_bus_mergerproxy_in314_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in319_ (.out1(sig_out_vector_bus_mergerproxy_in319_), .in1(sig_out_bus_mergerproxy_in319_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in324_ (.out1(sig_out_vector_bus_mergerproxy_in324_), .in1(sig_out_bus_mergerproxy_in324_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in39_ (.out1(sig_out_vector_bus_mergerproxy_in39_), .in1(sig_out_bus_mergerproxy_in39_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD10_ (.out1(sig_out_vector_bus_mergerproxy_sel_LOAD10_), .in1(sig_out_bus_mergerproxy_sel_LOAD10_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD15_ (.out1(sig_out_vector_bus_mergerproxy_sel_LOAD15_), .in1(sig_out_bus_mergerproxy_sel_LOAD15_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD20_ (.out1(sig_out_vector_bus_mergerproxy_sel_LOAD20_), .in1(sig_out_bus_mergerproxy_sel_LOAD20_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD25_ (.out1(sig_out_vector_bus_mergerproxy_sel_LOAD25_), .in1(sig_out_bus_mergerproxy_sel_LOAD25_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE11_ (.out1(sig_out_vector_bus_mergerproxy_sel_STORE11_), .in1(sig_out_bus_mergerproxy_sel_STORE11_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE16_ (.out1(sig_out_vector_bus_mergerproxy_sel_STORE16_), .in1(sig_out_bus_mergerproxy_sel_STORE16_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE21_ (.out1(sig_out_vector_bus_mergerproxy_sel_STORE21_), .in1(sig_out_bus_mergerproxy_sel_STORE21_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE26_ (.out1(sig_out_vector_bus_mergerproxy_sel_STORE26_), .in1(sig_out_bus_mergerproxy_sel_STORE26_));
  // io-signal post fix
  assign OUT_CONDITION_main_28882_30163 = out_read_cond_FU_15_i0_fu_main_28882_30163;
  assign OUT_CONDITION_main_28882_30175 = out_read_cond_FU_17_i0_fu_main_28882_30175;
  assign OUT_UNBOUNDED_main_28882_30140 = s_done_fu_main_28882_30140;
  assign OUT_UNBOUNDED_main_28882_30174 = s_done_fu_main_28882_30174;
  assign OUT_UNBOUNDED_main_28882_30183 = s_done_fu_main_28882_30183;

endmodule

// FSM based controller description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_main(done_port, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE, selector_IN_UNBOUNDED_main_28882_30140, selector_IN_UNBOUNDED_main_28882_30174, selector_IN_UNBOUNDED_main_28882_30183, selector_MUX_27_reg_3_0_0_0, wrenable_reg_0, wrenable_reg_1, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, OUT_CONDITION_main_28882_30163, OUT_CONDITION_main_28882_30175, OUT_UNBOUNDED_main_28882_30140, OUT_UNBOUNDED_main_28882_30174, OUT_UNBOUNDED_main_28882_30183, clock, reset, start_port);
  // IN
  input OUT_CONDITION_main_28882_30163;
  input OUT_CONDITION_main_28882_30175;
  input OUT_UNBOUNDED_main_28882_30140;
  input OUT_UNBOUNDED_main_28882_30174;
  input OUT_UNBOUNDED_main_28882_30183;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE;
  output selector_IN_UNBOUNDED_main_28882_30140;
  output selector_IN_UNBOUNDED_main_28882_30174;
  output selector_IN_UNBOUNDED_main_28882_30183;
  output selector_MUX_27_reg_3_0_0_0;
  output wrenable_reg_0;
  output wrenable_reg_1;
  output wrenable_reg_2;
  output wrenable_reg_3;
  output wrenable_reg_4;
  parameter [3:0] S_0 = 4'd0,
    S_1 = 4'd1,
    S_2 = 4'd2,
    S_3 = 4'd3,
    S_4 = 4'd4,
    S_5 = 4'd5,
    S_6 = 4'd6,
    S_10 = 4'd10,
    S_7 = 4'd7,
    S_8 = 4'd8,
    S_9 = 4'd9;
  reg [3:0] _present_state, _next_state;
  reg done_port;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE;
  reg selector_IN_UNBOUNDED_main_28882_30140;
  reg selector_IN_UNBOUNDED_main_28882_30174;
  reg selector_IN_UNBOUNDED_main_28882_30183;
  reg selector_MUX_27_reg_3_0_0_0;
  reg wrenable_reg_0;
  reg wrenable_reg_1;
  reg wrenable_reg_2;
  reg wrenable_reg_3;
  reg wrenable_reg_4;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_0;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE = 1'b0;
    selector_IN_UNBOUNDED_main_28882_30140 = 1'b0;
    selector_IN_UNBOUNDED_main_28882_30174 = 1'b0;
    selector_IN_UNBOUNDED_main_28882_30183 = 1'b0;
    selector_MUX_27_reg_3_0_0_0 = 1'b0;
    wrenable_reg_0 = 1'b0;
    wrenable_reg_1 = 1'b0;
    wrenable_reg_2 = 1'b0;
    wrenable_reg_3 = 1'b0;
    wrenable_reg_4 = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          selector_IN_UNBOUNDED_main_28882_30140 = 1'b1;
          selector_MUX_27_reg_3_0_0_0 = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_3 = 1'b1;
          if (OUT_UNBOUNDED_main_28882_30140 == 1'b0)
            begin
              _next_state = S_1;
            end
          else
            begin
              _next_state = S_2;
            end
        end
        else
        begin
          selector_MUX_27_reg_3_0_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_2 = 1'bX;
          wrenable_reg_3 = 1'bX;
          wrenable_reg_4 = 1'bX;
          _next_state = S_0;
        end
      S_1 :
        begin
          if (OUT_UNBOUNDED_main_28882_30140 == 1'b0)
            begin
              _next_state = S_1;
            end
          else
            begin
              _next_state = S_2;
            end
        end
      S_2 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE = 1'b1;
          wrenable_reg_3 = 1'b1;
          if (OUT_CONDITION_main_28882_30163 == 1'b1)
            begin
              _next_state = S_2;
            end
          else
            begin
              _next_state = S_3;
              wrenable_reg_3 = 1'b0;
            end
        end
      S_3 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE = 1'b1;
          _next_state = S_4;
        end
      S_4 :
        begin
          selector_IN_UNBOUNDED_main_28882_30174 = 1'b1;
          wrenable_reg_4 = 1'b1;
          if (OUT_UNBOUNDED_main_28882_30174 == 1'b0)
            begin
              _next_state = S_5;
            end
          else
            begin
              _next_state = S_6;
            end
        end
      S_5 :
        begin
          wrenable_reg_4 = 1'b1;
          if (OUT_UNBOUNDED_main_28882_30174 == 1'b0)
            begin
              _next_state = S_5;
            end
          else
            begin
              _next_state = S_6;
            end
        end
      S_6 :
        begin
          if (OUT_CONDITION_main_28882_30175 == 1'b1)
            begin
              _next_state = S_7;
            end
          else
            begin
              _next_state = S_10;
              done_port = 1'b1;
            end
        end
      S_10 :
        begin
          _next_state = S_0;
        end
      S_7 :
        begin
          selector_IN_UNBOUNDED_main_28882_30183 = 1'b1;
          if (OUT_UNBOUNDED_main_28882_30183 == 1'b0)
            begin
              _next_state = S_8;
            end
          else
            begin
              _next_state = S_9;
              done_port = 1'b1;
            end
        end
      S_8 :
        begin
          if (OUT_UNBOUNDED_main_28882_30183 == 1'b0)
            begin
              _next_state = S_8;
            end
          else
            begin
              _next_state = S_9;
              done_port = 1'b1;
            end
        end
      S_9 :
        begin
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_27_reg_3_0_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_2 = 1'bX;
          wrenable_reg_3 = 1'bX;
          wrenable_reg_4 = 1'bX;
        end
    endcase
  end
endmodule

// Top component for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module _main(clock, reset, start_port, done_port, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Sout_Rdata_ram, Sout_DataRdy, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size);
  parameter MEM_var_28859_28880=5120, MEM_var_28861_28880=6144, MEM_var_28862_28880=7168, MEM_var_28864_28880=8192, MEM_var_28865_28880=9216, MEM_var_28866_28880=10240, MEM_var_28867_28882=1024, MEM_var_28868_28882=2048, MEM_var_28869_28882=3072, MEM_var_28870_28882=4096;
  // IN
  input clock;
  input reset;
  input start_port;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [27:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [15:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [27:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  // OUT
  output done_port;
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [27:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  // Component and signal declarations
  wire OUT_CONDITION_main_28882_30163;
  wire OUT_CONDITION_main_28882_30175;
  wire OUT_UNBOUNDED_main_28882_30140;
  wire OUT_UNBOUNDED_main_28882_30174;
  wire OUT_UNBOUNDED_main_28882_30183;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE;
  wire selector_IN_UNBOUNDED_main_28882_30140;
  wire selector_IN_UNBOUNDED_main_28882_30174;
  wire selector_IN_UNBOUNDED_main_28882_30183;
  wire selector_MUX_27_reg_3_0_0_0;
  wire wrenable_reg_0;
  wire wrenable_reg_1;
  wire wrenable_reg_2;
  wire wrenable_reg_3;
  wire wrenable_reg_4;
  
  controller_main Controller_i (.done_port(done_delayed_REG_signal_in), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE), .selector_IN_UNBOUNDED_main_28882_30140(selector_IN_UNBOUNDED_main_28882_30140), .selector_IN_UNBOUNDED_main_28882_30174(selector_IN_UNBOUNDED_main_28882_30174), .selector_IN_UNBOUNDED_main_28882_30183(selector_IN_UNBOUNDED_main_28882_30183), .selector_MUX_27_reg_3_0_0_0(selector_MUX_27_reg_3_0_0_0), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .OUT_CONDITION_main_28882_30163(OUT_CONDITION_main_28882_30163), .OUT_CONDITION_main_28882_30175(OUT_CONDITION_main_28882_30175), .OUT_UNBOUNDED_main_28882_30140(OUT_UNBOUNDED_main_28882_30140), .OUT_UNBOUNDED_main_28882_30174(OUT_UNBOUNDED_main_28882_30174), .OUT_UNBOUNDED_main_28882_30183(OUT_UNBOUNDED_main_28882_30183), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_main #(.MEM_var_28859_28880(MEM_var_28859_28880), .MEM_var_28861_28880(MEM_var_28861_28880), .MEM_var_28862_28880(MEM_var_28862_28880), .MEM_var_28864_28880(MEM_var_28864_28880), .MEM_var_28865_28880(MEM_var_28865_28880), .MEM_var_28866_28880(MEM_var_28866_28880), .MEM_var_28867_28882(MEM_var_28867_28882), .MEM_var_28868_28882(MEM_var_28868_28882), .MEM_var_28869_28882(MEM_var_28869_28882), .MEM_var_28870_28882(MEM_var_28870_28882)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .OUT_CONDITION_main_28882_30163(OUT_CONDITION_main_28882_30163), .OUT_CONDITION_main_28882_30175(OUT_CONDITION_main_28882_30175), .OUT_UNBOUNDED_main_28882_30140(OUT_UNBOUNDED_main_28882_30140), .OUT_UNBOUNDED_main_28882_30174(OUT_UNBOUNDED_main_28882_30174), .OUT_UNBOUNDED_main_28882_30183(OUT_UNBOUNDED_main_28882_30183), .clock(clock), .reset(reset), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE), .selector_IN_UNBOUNDED_main_28882_30140(selector_IN_UNBOUNDED_main_28882_30140), .selector_IN_UNBOUNDED_main_28882_30174(selector_IN_UNBOUNDED_main_28882_30174), .selector_IN_UNBOUNDED_main_28882_30183(selector_IN_UNBOUNDED_main_28882_30183), .selector_MUX_27_reg_3_0_0_0(selector_MUX_27_reg_3_0_0_0), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// Minimal interface for function: main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module main(clock, reset, start_port, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, done_port, Sout_Rdata_ram, Sout_DataRdy, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size);
  parameter MEM_var_28859_28880=5120, MEM_var_28861_28880=6144, MEM_var_28862_28880=7168, MEM_var_28864_28880=8192, MEM_var_28865_28880=9216, MEM_var_28866_28880=10240, MEM_var_28867_28882=1024, MEM_var_28868_28882=2048, MEM_var_28869_28882=3072, MEM_var_28870_28882=4096;
  // IN
  input clock;
  input reset;
  input start_port;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [27:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  // OUT
  output done_port;
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [27:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  // Component and signal declarations
  
  _main #(.MEM_var_28859_28880(MEM_var_28859_28880), .MEM_var_28861_28880(MEM_var_28861_28880), .MEM_var_28862_28880(MEM_var_28862_28880), .MEM_var_28864_28880(MEM_var_28864_28880), .MEM_var_28865_28880(MEM_var_28865_28880), .MEM_var_28866_28880(MEM_var_28866_28880), .MEM_var_28867_28882(MEM_var_28867_28882), .MEM_var_28868_28882(MEM_var_28868_28882), .MEM_var_28869_28882(MEM_var_28869_28882), .MEM_var_28870_28882(MEM_var_28870_28882)) _main_i0 (.done_port(done_port), .Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .clock(clock), .reset(reset), .start_port(start_port), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram({8'b00000000, 8'b00000000}), .Sin_DataRdy({1'b0, 1'b0}), .Min_oe_ram({1'b0, 1'b0}), .Min_we_ram({1'b0, 1'b0}), .Min_addr_ram({14'b00000000000000, 14'b00000000000000}), .Min_Wdata_ram({8'b00000000, 8'b00000000}), .Min_data_ram_size({4'b0000, 4'b0000}));

endmodule


