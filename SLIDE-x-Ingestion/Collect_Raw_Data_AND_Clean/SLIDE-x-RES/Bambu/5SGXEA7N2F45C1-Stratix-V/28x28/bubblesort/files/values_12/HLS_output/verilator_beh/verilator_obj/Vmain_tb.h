// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _Vmain_tb_H_
#define _Vmain_tb_H_

#include "verilated.h"
#include "Vmain_tb__Inlines.h"
class Vmain_tb__Syms;

//----------

VL_MODULE(Vmain_tb) {
  public:
    // CELLS
    // Public to allow access to /*verilator_public*/ items;
    // otherwise the application code can consider these internals.
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(clock,0,0);
    //char	__VpadToAlign1[3];
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    VL_SIG8(v__DOT__compare_outputs,0,0);
    VL_SIG8(v__DOT__success,0,0);
    VL_SIG8(v__DOT___bambu_databyte_,7,0);
    VL_SIG8(v__DOT_____05Fstate,3,0);
    VL_SIG8(v__DOT_____05Fnext_state,3,0);
    VL_SIG8(v__DOT__start_results_comparison,0,0);
    VL_SIG8(v__DOT__next_start_port,0,0);
    VL_SIG8(v__DOT__reset,0,0);
    VL_SIG8(v__DOT__start_port,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28865_29115,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__selector_MUX_3_bubblesort_6_i0_1_0_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___present_state,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_data_ram_size2_0,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_oe_ram3_0,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_we_ram4_0,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerproxy_sel_LOAD10_0,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerproxy_sel_STORE11_0,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_data_ram_size2_,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_oe_ram3_,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_we_ram4_,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerproxy_sel_LOAD10_,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerproxy_sel_STORE11_,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__bram_write,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory_addr_a,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__cs,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__oe_ram_cs,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__we_ram_cs,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__oe_ram_cs_delayed,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__done_delayed_REG_signal_in,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__fuselector_BMEMORY_CTRLN_31_i0_LOAD,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__fuselector_BMEMORY_CTRLN_31_i1_LOAD,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__fuselector_PROXY_CTRLN_0_i0_LOAD,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__fuselector_PROXY_CTRLN_0_i0_STORE,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__fuselector_PROXY_CTRLN_0_i1_LOAD,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__selector_MUX_14_PROXY_CTRLN_0_i0_0_0_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__selector_MUX_15_PROXY_CTRLN_0_i0_1_0_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__selector_MUX_49_reg_1_0_0_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__selector_MUX_52_reg_12_0_0_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__selector_MUX_52_reg_12_0_0_1,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__selector_MUX_53_reg_13_0_0_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__selector_MUX_54_reg_14_0_0_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__selector_MUX_54_reg_14_0_0_1,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__selector_MUX_56_reg_3_0_0_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__selector_MUX_60_reg_7_0_0_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__wrenable_reg_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__wrenable_reg_1,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__wrenable_reg_10,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__wrenable_reg_12,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__wrenable_reg_13,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__wrenable_reg_14,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__wrenable_reg_2,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__wrenable_reg_3,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__wrenable_reg_4,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__wrenable_reg_5,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__wrenable_reg_6,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__wrenable_reg_7,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__wrenable_reg_8,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__wrenable_reg_9,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Controller_i__DOT___present_state,3,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Controller_i__DOT___next_state,3,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__out_MUX_14_PROXY_CTRLN_0_i0_0_0_0,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__out_MUX_56_reg_3_0_0_0,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_data_ram_size2_0,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_oe_ram3_0,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_we_ram4_0,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__sig_in_bus_mergerproxy_sel_LOAD_288598_0,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__sig_in_bus_mergerproxy_sel_STORE_288599_0,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_data_ram_size2_0,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_data_ram_size2_,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_oe_ram3_,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_we_ram4_,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__sig_out_bus_mergerproxy_sel_LOAD_288598_,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__sig_out_bus_mergerproxy_sel_STORE_288599_,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__reg_0__DOT__reg_out1,6,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__reg_1__DOT__reg_out1,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__reg_10__DOT__reg_out1,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__reg_11__DOT__reg_out1,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__reg_13__DOT__reg_out1,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__reg_14__DOT__reg_out1,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__reg_2__DOT__reg_out1,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__reg_3__DOT__reg_out1,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__reg_4__DOT__reg_out1,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__reg_8__DOT__reg_out1,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__reg_9__DOT__reg_out1,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__done_delayed_REG__DOT__reg_out1,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__done_delayed_REG__DOT__reg_out1,0,0);
    //char	__VpadToAlign97[1];
    VL_SIG16(v__DOT__M_Rdata_ram,15,0);
    VL_SIG16(v__DOT__mask,15,0);
    VL_SIG16(v__DOT__M_Rdata_ram_delayed_temporary,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__proxy_out1_28859,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_Wdata_ram0_0,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_addr_ram1_0,13,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerSout_Rdata_ram6_0,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerproxy_in17_0,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerproxy_in28_0,13,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerSout_Rdata_ram6_0,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_Wdata_ram0_,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_,13,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerSout_Rdata_ram6_,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerproxy_in17_,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerproxy_in28_,13,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__S_Wdata_ram_int,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__din_value_aggregated,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__dout_a,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__tmp_addr,13,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__relative_addr,13,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_Wdata_ram0_0,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_addr_ram1_0,13,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__sig_in_bus_mergerproxy_in1_288595_0,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__sig_in_bus_mergerproxy_in2_288596_0,13,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_Wdata_ram0_0,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_addr_ram1_0,13,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerproxy_in1_288595_0,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerproxy_in2_288596_0,13,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_Wdata_ram0_,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_,13,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__sig_out_bus_mergerproxy_in1_288595_,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__sig_out_bus_mergerproxy_in2_288596_,13,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__reg_12__DOT__reg_out1,8,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__reg_5__DOT__reg_out1,8,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__reg_6__DOT__reg_out1,8,0);
    VL_SIG(v__DOT__res_file,31,0);
    VL_SIG(v__DOT__file,31,0);
    VL_SIG(v__DOT___r_,31,0);
    VL_SIG(v__DOT___n_,31,0);
    VL_SIG(v__DOT___addr_i_,31,0);
    VL_SIG(v__DOT___ch_,31,0);
    VL_SIGW(v__DOT__line,8000,0,251);
    VL_SIG(v__DOT__base_addr,31,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__out_MUX_3_bubblesort_6_i0_1_0_0,31,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__out_MUX_60_reg_7_0_0_0,31,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__reg_7__DOT__reg_out1,31,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__reg_0__DOT__reg_out1,31,0);
    VL_SIG64(v__DOT__startTime,63,0);
    VL_SIG64(v__DOT__endTime,63,0);
    VL_SIG64(v__DOT__sim_time,63,0);
    VL_SIG8(v__DOT___bambu_testbench_mem_[1],7,0);
    //char	__VpadToAlign1241[7];
    VL_SIG(v__DOT__reg_DataReady[2],31,0);
    VL_SIG16(v__DOT__M_Rdata_ram_delayed[1],15,0);
    //char	__VpadToAlign1258[6];
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory[10],7,0);
    //char	__VpadToAlign1274[2];
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    static VL_ST_SIG8(__Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[16],0,0);
    static VL_ST_SIG8(__Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28865_29115[16],0,0);
    static VL_ST_SIG8(__Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_MUX_3_bubblesort_6_i0_1_0_0[16],0,0);
    static VL_ST_SIG8(__Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[16],0,0);
    static VL_ST_SIG8(__Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[16],1,0);
    VL_SIG8(v__DOT____Vlvbound2,7,0);
    VL_SIG8(v__DOT____Vlvbound3,7,0);
    VL_SIG8(v__DOT____Vlvbound4,7,0);
    VL_SIG8(v__DOT____Vlvbound5,7,0);
    VL_SIG8(v__DOT____Vlvbound7,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT____Vlvbound1,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT____Vlvbound2,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT____Vcellinp__BMEMORY_CTRLN_31_i0__sel_LOAD,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT____Vcellinp__PROXY_CTRLN_0_i0__sel_LOAD,1,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__2__Vfuncout,7,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__2__m,7,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__2__res,7,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__3__Vfuncout,1,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__3__m,1,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__3__res,1,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerproxy_sel_LOAD10___DOT__merge__10__Vfuncout,1,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerproxy_sel_LOAD10___DOT__merge__10__m,1,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerproxy_sel_LOAD10___DOT__merge__10__res,1,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerproxy_sel_STORE11___DOT__merge__11__Vfuncout,1,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerproxy_sel_STORE11___DOT__merge__11__m,1,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerproxy_sel_STORE11___DOT__merge__11__res,1,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__14__Vfuncout,7,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__14__m,7,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__14__res,7,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__15__Vfuncout,1,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__15__m,1,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__15__res,1,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__bus_mergerproxy_sel_LOAD_288598___DOT__merge__20__Vfuncout,1,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__bus_mergerproxy_sel_LOAD_288598___DOT__merge__20__m,1,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__bus_mergerproxy_sel_LOAD_288598___DOT__merge__20__res,1,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__bus_mergerproxy_sel_STORE_288599___DOT__merge__21__Vfuncout,1,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__bus_mergerproxy_sel_STORE_288599___DOT__merge__21__m,1,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__bus_mergerproxy_sel_STORE_288599___DOT__merge__21__res,1,0);
    VL_SIG8(__Vtableidx1,3,0);
    VL_SIG8(__Vclklast__TOP__clock,0,0);
    //char	__VpadToAlign1315[1];
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT____Vcellinp__BMEMORY_CTRLN_31_i0__in2,13,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT____Vcellout__BMEMORY_CTRLN_31_i0__out1,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT____Vcellinp__PROXY_CTRLN_0_i0__in2,13,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT____Vcellout__PROXY_CTRLN_0_i0__out1,15,0);
    VL_SIG16(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__1__Vfuncout,13,0);
    VL_SIG16(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__1__m,13,0);
    VL_SIG16(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__1__res,13,0);
    VL_SIG16(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerSout_Rdata_ram6___DOT__merge__6__Vfuncout,15,0);
    VL_SIG16(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerSout_Rdata_ram6___DOT__merge__6__m,15,0);
    VL_SIG16(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerSout_Rdata_ram6___DOT__merge__6__res,15,0);
    VL_SIG16(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerproxy_in17___DOT__merge__7__Vfuncout,15,0);
    VL_SIG16(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerproxy_in17___DOT__merge__7__m,15,0);
    VL_SIG16(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerproxy_in17___DOT__merge__7__res,15,0);
    VL_SIG16(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerproxy_in28___DOT__merge__8__Vfuncout,13,0);
    VL_SIG16(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerproxy_in28___DOT__merge__8__m,13,0);
    VL_SIG16(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerproxy_in28___DOT__merge__8__res,13,0);
    VL_SIG16(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__13__Vfuncout,13,0);
    VL_SIG16(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__13__m,13,0);
    VL_SIG16(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__13__res,13,0);
    VL_SIG16(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__bus_mergerproxy_in1_288595___DOT__merge__17__Vfuncout,15,0);
    VL_SIG16(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__bus_mergerproxy_in1_288595___DOT__merge__17__m,15,0);
    VL_SIG16(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__bus_mergerproxy_in1_288595___DOT__merge__17__res,15,0);
    VL_SIG16(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__bus_mergerproxy_in2_288596___DOT__merge__18__Vfuncout,13,0);
    VL_SIG16(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__bus_mergerproxy_in2_288596___DOT__merge__18__m,13,0);
    VL_SIG16(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28865_29115__DOT__Datapath_i__DOT__bus_mergerproxy_in2_288596___DOT__merge__18__res,13,0);
    //char	__VpadToAlign1366[2];
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    //char	__VpadToAlign1372[4];
    Vmain_tb__Syms*	__VlSymsp;		// Symbol table
    
    // PARAMETERS
    // Parameters marked /*verilator public*/ for use by application code
    
    // CONSTRUCTORS
  private:
    Vmain_tb& operator= (const Vmain_tb&);	///< Copying not allowed
    Vmain_tb(const Vmain_tb&);	///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible WRT DPI scope names.
    Vmain_tb(const char* name="TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~Vmain_tb();
    
    // USER METHODS
    
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval();
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    
    // INTERNAL METHODS
  private:
    static void _eval_initial_loop(Vmain_tb__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(Vmain_tb__Syms* symsp, bool first);
  private:
    static QData	_change_request(Vmain_tb__Syms* __restrict vlSymsp);
  public:
    static void	_eval(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_eval_initial(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_eval_settle(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_initial__TOP__2(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_initial__TOP__6(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_initial__TOP__9(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__10(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__12(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__14(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__16(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__18(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__20(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__3(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__4(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__7(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_settle__TOP__1(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_settle__TOP__11(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_settle__TOP__13(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_settle__TOP__15(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_settle__TOP__17(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_settle__TOP__19(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_settle__TOP__21(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_settle__TOP__5(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_settle__TOP__8(Vmain_tb__Syms* __restrict vlSymsp);
} VL_ATTR_ALIGNED(128);

#endif  /*guard*/
