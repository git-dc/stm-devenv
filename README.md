# stm-devenv
STM32 dev environment setup scripts.


## Ingredients:

* IDE with source editor and navigator.		- Eclipse CDT
* IDE Plug-ins	  	     			- A smattering of plugins
* Cross-platform compiler.   		  	- GCC
* Debugger with step-by-step execution.		- OpenOCD + GDB / STM32Flash
* Debugger interface.   			- ST-LinkV2 / UART
* Java 8 Update 121 or later.

## Steps:

* Run `$ setup/tools-setup.sh`
* Open Eclipse. Go to "Help" -> "Install New Software...".
* Click on "Manage" and under "Install/Update" -> "Available Software Sites" make sure that the CDT entry is checked. Click "OK".
* In the "Available Software" Install window, choose "CDT - http://download.eclipse.org/tools/cdt/releases/9.4" from the drop-down menu.
* Select "CDT Main Features" -> "C/C++ Development Tools" and "CDT Optional Features" -> "C/C++ GDB Hardware Debugging" entries. Click on "Next".
* Go to "Help" -> "Install New Software..." again. Click "Add" and add the following entry and click "OK".
  * **Name**: GNU MCU Eclipse Plug-ins
  * **Location**: http://gnu-mcu-eclipse.netlify.com/v4-neon-updates
* From the "work with" drop-down menu select "GNU MCU Eclipse Plug-ins".
* Select the following:
  * GNU MCU C/C++ ARM Cross Compiler
  * GNU MCU C/C++ Documention (Placeholder)
  * GNU MCU C/C++ Generic Cortex-M Project Template
  * GNU MCU C/C++ J-Link Debugging
  * GNU MCU C/C++ OpenOCD Debugging
  * GNU MCU C/C++ Packs (Experimental)
  * GNU MCU C/C++ PyOCD Debugging
  * GNU MCU C/C++ STM32Fx Project Templates
* Restart Eclipse when installation is complete.
* Head to the [Arm Developer Website](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads) and download the relevant tar ball.
* Extract it in `tools/`
* If using ST-Link, download its firmware update from the [ST Webiste](https://www.st.com/en/development-tools/stsw-link007.html).
* Extract it in a convenient place. Connect your ST-Link and execute the "STLinkUpgrade.jar" file in "AllPlatforms". Clikc on "Open in Update Mode". Click on "Upgrade".
* Run the `first-time-setup` script in the `tools/flash-tools` directory.
* Head to the official [ST CubeMX page](https://www.st.com/en/development-tools/stm32cubemx.html#get-software) and download the STM32CubeMX tool.
* Unzip the arhcive and run the installer script. Install it in the `tools/stm32cubemx` directory.
* Head to the official [ST CubeProgrammer page](https://my.st.com/content/my_st_com/en/products/development-tools/software-development-tools/stm32-software-development-tools/stm32-programmers/stm32cubeprog.license=1514495795239.html#get-software) and download the STM32CubeProgrammer tool.
* 
