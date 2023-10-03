# Introduction

MeanStream was born out of the need to create complex, yet reliable macros for Blackmagic Design ATEM switchers. While tools exist that communicate with ATEM switchers over the network to manipulate switcher settings, MeanStream chooses the built-in macro functionality as a foundation to managing different ATEM settings that provides the necessary stability and performance to run animations smoothly. ATEM switchers allow the creation of macros by either recording configuration changes the user makes via the provided software or by writing and importing macros in XML format. MeanStream’s purpose is to produce macros in the XML format which can then be imported into ATEM devices.

# Quick Start

1. Go to https://meanstream.io and create an account. An account is necessary to keep 
your configuration apart from that of other users so MeanStream can protect your configs from manipulation by other users.
2. Create and configure a Project. Projects allow you to manage different sets of Scenes. Each project represents an event, live stream or recording that you are planning or have already performed.
3. Set up the Scenes you need for your event. If you know ATEM Software Control well, you should find your way around very quickly.
4. Export the Project as a ZIP file. This archive includes all files necessary to import the config into your ATEM and Bitfocus Companion.

# Basic Concepts

MeanStream uses Projects, Scenes and Transitions to produce the macros you need.

Projects allow you to manage different sets of Scenes. Each project represents an event, live stream or recording that you are planning or have already performed. While configuration changes are possible, each Project is designed to run on a specific ATEM model which should be configured upfront.

A Scene represents a specific configuration the ATEM devices should be in. Scenes can be as simple as “show camera 1 fullscreen” but may include advanced configurations such as multiple boxes, overlays and other effects.

Transitions describe the process of getting from one Scene to another. ATEM devices support several built-in transitions such as “Mix”, “Dip” or “Wipe” among others. MeanStream allows you to utilize all of the built-in functionality and adds additional capabilities where possible. Transitions may include animations of various properties (position, size, etc) of video sources for more professionally looking results. MeanStream generates default but configurable Transitions for every combination of Scenes.

![image](_media/scenes-and-transitions.png)


# Projects

Projects allow you to manage different sets of Scenes and Transitions. Typically, you would 
create a new Project for each new event, stream or other activity that requires an adjusted
ATEM configuration.

## Creating A New Project

A new Project with a defaul tname is created via the navigation menu on the left. 

![image](_media/project-create.png ':size=800')

The Project's name can then be changed in the Project settings.

## Project Settings

One of the first things, you want to do after creating a new Project is
to configure it.

![image](_media/project-settings.png ':size=400')

There are many options to be configured which is why the Project settings page is divided into multiple sections:

### General

**Project Name:** The name of the Project can be changed at any time. Doing so has no implications whatsoever.

### ATEM Settings

To work optimally, MeanStream needs to know about your ATEM device.

**Model:** The ATEM model let's MeanStream display the right inputs and features when it comes to editing Scenes and Transitions. This ensures your configuration is actually compatible with the ATEM it gets loaded into.

**Switcher Name:** In case you have more than only one ATEM switcher, you will probably have some way to identify it. Type in that identifer, it will come in handy sooner or later.

**Video Mode:** MeanStream allows you to configure Transition durations in milliseconds. Setting this correctly, will allow MeanStream to produce macros accordingly.

**Input Source:** Every ATEM has a lot of input sources. Especially on larger devices it becomes impossible to memorize which input device (camera, computer, Hyperdeck, etc) is connected to which HDMI or SDI input. By giving them names, you will be able to easily identify the right input source when configuring Scenes or Transitions.

**Hyperdecks:** ATEMs can connect to up to 4 Blackmagic Design Hyperdeck devices which can be controlled via macros, too. Telling MeanStream which connections are in use and by giving the Hyperdeck a speaking name, you can easily identify the right device later down the road.


![image](_media/project-settings-atem-settings.png ':size=1000')

### Defaults & Templates

**Transition Template:** MeanStream generates a Macro for every Transition and one Transition for every pair of Scenes. This way to can navigate from every Scene to every other Scene in a reproducable manner. With 10 Scenes, this leads to 90 Transitions which need to be configured. By setting a Transition template, you can configure 90 Transitions with a single click and overwrite the defaults for specific Scenes.

![image](_media/project-settings-defaults-templates.png ':size=1000')

### Export Tweaks

**Macro Range:** MeanStream produces an XML file to be imported into your ATEM switcher. The XML file contains the macro pool representing the transitions. ATEMs support a limited number of macros (99). By setting the range of macro slots to be used by MeanStream, you can protect your own macros from getting overwritten by MeanStream. No macro will be outside the range and MeanStream will fill the range from the end starting at 99.

**Macro Wipe:** Importing macros into an ATEM will overwrite macros that use the same slot (index) but will NOT delete any macros not specified in the XML. Previously created macros will not get cleaned up properly. By enabling macro wipe, MeanStream will fill the macro range with empty macros and give them a speaking name. This is a workaround for ATEM's lack of ability to delete macros via XML import.

![image](_media/project-settings-export-tweaks.png ':size=1000')

## Deleting A Project

A Project can be deleted from the Project settings page. Scrolling all the way down you will find a section called **Nope Zone**. Hit "Delete" and confirm the deletion. **Warning:** All Scenes and Transitions in this Project will be lost.

![image](_media/project-settings-nope-zone.png ':size=1000')

# Scenes

## Creating Scenes

## Scene Settings

## Cloning Scenes

## Deleting Scenes

## Configuring Scenes

### Video Editor

### Audio Editor


# Transitions

## Creating & Deleting Transitions

## Native Transitions

## MeanStream Transitions

### Hyperdeck Stinger

### Animated Transition

### Composite Transition



# Bundles

## Downloading A Bundle

## ATEM Configuration

## Bitfocus Companion

### Supported Devices

### Importing Pages & Buttons