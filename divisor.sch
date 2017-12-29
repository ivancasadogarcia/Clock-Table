<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Clk_in" />
        <signal name="Clk_1Hz" />
        <signal name="Clk_10Hz" />
        <signal name="Clk_100Hz" />
        <signal name="Clk_1kHz" />
        <port polarity="Input" name="Clk_in" />
        <port polarity="Output" name="Clk_1Hz" />
        <port polarity="Output" name="Clk_10Hz" />
        <port polarity="Output" name="Clk_100Hz" />
        <port polarity="Output" name="Clk_1kHz" />
        <blockdef name="div50k">
            <timestamp>2016-10-3T10:45:30</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="div10">
            <timestamp>2016-10-3T10:55:3</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="div50k" name="XLXI_6">
            <blockpin signalname="Clk_in" name="clk_in" />
            <blockpin signalname="Clk_1kHz" name="clk_out" />
        </block>
        <block symbolname="div10" name="XLXI_7">
            <blockpin signalname="Clk_1kHz" name="clk_in" />
            <blockpin signalname="Clk_100Hz" name="clk_out" />
        </block>
        <block symbolname="div10" name="XLXI_8">
            <blockpin signalname="Clk_100Hz" name="clk_in" />
            <blockpin signalname="Clk_10Hz" name="clk_out" />
        </block>
        <block symbolname="div10" name="XLXI_9">
            <blockpin signalname="Clk_10Hz" name="clk_in" />
            <blockpin signalname="Clk_1Hz" name="clk_out" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="Clk_in">
            <wire x2="1520" y1="752" y2="752" x1="1472" />
        </branch>
        <branch name="Clk_1Hz">
            <wire x2="2176" y1="1232" y2="1232" x1="1904" />
            <wire x2="2192" y1="1184" y2="1184" x1="2176" />
            <wire x2="2176" y1="1184" y2="1232" x1="2176" />
        </branch>
        <iomarker fontsize="28" x="2192" y="1184" name="Clk_1Hz" orien="R0" />
        <branch name="Clk_10Hz">
            <wire x2="1440" y1="1152" y2="1232" x1="1440" />
            <wire x2="1520" y1="1232" y2="1232" x1="1440" />
            <wire x2="2016" y1="1152" y2="1152" x1="1440" />
            <wire x2="1952" y1="1072" y2="1072" x1="1904" />
            <wire x2="1952" y1="1040" y2="1072" x1="1952" />
            <wire x2="2016" y1="1040" y2="1040" x1="1952" />
            <wire x2="2192" y1="1040" y2="1040" x1="2016" />
            <wire x2="2016" y1="1040" y2="1152" x1="2016" />
        </branch>
        <branch name="Clk_100Hz">
            <wire x2="1456" y1="1008" y2="1072" x1="1456" />
            <wire x2="1520" y1="1072" y2="1072" x1="1456" />
            <wire x2="2000" y1="1008" y2="1008" x1="1456" />
            <wire x2="2000" y1="896" y2="896" x1="1904" />
            <wire x2="2192" y1="896" y2="896" x1="2000" />
            <wire x2="2000" y1="896" y2="1008" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2192" y="736" name="Clk_1kHz" orien="R0" />
        <iomarker fontsize="28" x="2192" y="896" name="Clk_100Hz" orien="R0" />
        <iomarker fontsize="28" x="2192" y="1040" name="Clk_10Hz" orien="R0" />
        <iomarker fontsize="28" x="1472" y="752" name="Clk_in" orien="R180" />
        <instance x="1520" y="784" name="XLXI_6" orien="R0">
        </instance>
        <instance x="1520" y="928" name="XLXI_7" orien="R0">
        </instance>
        <instance x="1520" y="1104" name="XLXI_8" orien="R0">
        </instance>
        <instance x="1520" y="1264" name="XLXI_9" orien="R0">
        </instance>
        <branch name="Clk_1kHz">
            <wire x2="1456" y1="800" y2="896" x1="1456" />
            <wire x2="1520" y1="896" y2="896" x1="1456" />
            <wire x2="1968" y1="800" y2="800" x1="1456" />
            <wire x2="1968" y1="752" y2="752" x1="1904" />
            <wire x2="2048" y1="752" y2="752" x1="1968" />
            <wire x2="1968" y1="752" y2="800" x1="1968" />
            <wire x2="2048" y1="736" y2="752" x1="2048" />
            <wire x2="2192" y1="736" y2="736" x1="2048" />
        </branch>
    </sheet>
</drawing>