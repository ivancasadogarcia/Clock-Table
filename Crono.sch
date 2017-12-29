<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2" />
        <signal name="reset" />
        <signal name="XLXN_4(5:0)" />
        <signal name="XLXN_5(6:0)" />
        <signal name="XLXN_6(6:0)" />
        <signal name="dp" />
        <signal name="seg(6:0)" />
        <signal name="pos(3:0)" />
        <signal name="onoff" />
        <signal name="clk" />
        <signal name="XLXN_15" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="dp" />
        <port polarity="Output" name="seg(6:0)" />
        <port polarity="Output" name="pos(3:0)" />
        <port polarity="Input" name="onoff" />
        <port polarity="Input" name="clk" />
        <blockdef name="comptador">
            <timestamp>2016-10-20T17:59:3</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="256" x="64" y="-128" height="256" />
        </blockdef>
        <blockdef name="conversor">
            <timestamp>2016-10-20T17:28:55</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="visualitzador7seg">
            <timestamp>2016-10-20T17:29:1</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="divisor">
            <timestamp>2016-10-20T17:29:8</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="comptador" name="XLXI_2">
            <blockpin signalname="XLXN_2" name="Clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="onoff" name="onoff" />
            <blockpin signalname="XLXN_4(5:0)" name="Qout(5:0)" />
        </block>
        <block symbolname="conversor" name="XLXI_3">
            <blockpin signalname="XLXN_4(5:0)" name="Q(5:0)" />
            <blockpin signalname="XLXN_5(6:0)" name="unitats(6:0)" />
            <blockpin signalname="XLXN_6(6:0)" name="desenes(6:0)" />
        </block>
        <block symbolname="visualitzador7seg" name="XLXI_6">
            <blockpin signalname="XLXN_15" name="clk" />
            <blockpin signalname="XLXN_5(6:0)" name="unitats(6:0)" />
            <blockpin signalname="XLXN_6(6:0)" name="desenes(6:0)" />
            <blockpin signalname="dp" name="dp" />
            <blockpin signalname="seg(6:0)" name="seg(6:0)" />
            <blockpin signalname="pos(3:0)" name="posicio(3:0)" />
        </block>
        <block symbolname="divisor" name="XLXI_7">
            <blockpin signalname="clk" name="Clk_in" />
            <blockpin signalname="XLXN_2" name="Clk_1Hz" />
            <blockpin name="Clk_10Hz" />
            <blockpin name="Clk_100Hz" />
            <blockpin signalname="XLXN_15" name="Clk_1kHz" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1008" y="1552" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1552" y="1552" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_2">
            <wire x2="1472" y1="1280" y2="1280" x1="928" />
            <wire x2="928" y1="1280" y2="1456" x1="928" />
            <wire x2="1008" y1="1456" y2="1456" x1="928" />
            <wire x2="1472" y1="1024" y2="1024" x1="1360" />
            <wire x2="1472" y1="1024" y2="1280" x1="1472" />
        </branch>
        <branch name="reset">
            <wire x2="1008" y1="1520" y2="1520" x1="896" />
        </branch>
        <iomarker fontsize="28" x="896" y="976" name="clk" orien="R180" />
        <iomarker fontsize="28" x="896" y="1520" name="reset" orien="R180" />
        <branch name="XLXN_4(5:0)">
            <wire x2="1552" y1="1456" y2="1456" x1="1392" />
        </branch>
        <branch name="XLXN_5(6:0)">
            <wire x2="2048" y1="1456" y2="1456" x1="1936" />
            <wire x2="2304" y1="1232" y2="1232" x1="2048" />
            <wire x2="2048" y1="1232" y2="1456" x1="2048" />
        </branch>
        <branch name="XLXN_6(6:0)">
            <wire x2="2128" y1="1520" y2="1520" x1="1936" />
            <wire x2="2128" y1="1296" y2="1520" x1="2128" />
            <wire x2="2304" y1="1296" y2="1296" x1="2128" />
        </branch>
        <instance x="2304" y="1328" name="XLXI_6" orien="R0">
        </instance>
        <branch name="dp">
            <wire x2="2704" y1="1168" y2="1168" x1="2688" />
            <wire x2="2768" y1="1168" y2="1168" x1="2704" />
        </branch>
        <branch name="seg(6:0)">
            <wire x2="2704" y1="1232" y2="1232" x1="2688" />
            <wire x2="2752" y1="1232" y2="1232" x1="2704" />
        </branch>
        <branch name="pos(3:0)">
            <wire x2="2704" y1="1296" y2="1296" x1="2688" />
            <wire x2="2768" y1="1296" y2="1296" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="2752" y="1232" name="seg(6:0)" orien="R0" />
        <iomarker fontsize="28" x="2768" y="1296" name="pos(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2768" y="1168" name="dp" orien="R0" />
        <branch name="onoff">
            <wire x2="992" y1="1584" y2="1584" x1="896" />
            <wire x2="1008" y1="1584" y2="1584" x1="992" />
        </branch>
        <iomarker fontsize="28" x="896" y="1584" name="onoff" orien="R180" />
        <instance x="976" y="1248" name="XLXI_7" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="928" y1="976" y2="976" x1="896" />
            <wire x2="928" y1="976" y2="1024" x1="928" />
            <wire x2="976" y1="1024" y2="1024" x1="928" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1824" y1="1216" y2="1216" x1="1360" />
            <wire x2="1824" y1="1168" y2="1216" x1="1824" />
            <wire x2="2304" y1="1168" y2="1168" x1="1824" />
        </branch>
    </sheet>
</drawing>