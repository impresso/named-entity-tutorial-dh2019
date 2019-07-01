### Some tests with basic components of a rule-based system

**Context** This notebook is meant to drive you through the usage of Corleone and Express, two softwares developed at the Joint Research Center (Europen Commission, Ispra, Italy) by Jakub Piskorski. These softwares are in use in production applications, notably the Europe Media Monitor. They are free for academic usage but you should ask a license if you want to use them beyond this tutorial.

**Tools**

- Corleone (Core Linguistic Entity Online Extraction) is a set of lightweight linguistic processing components (text scanner, tokenizer, sentence splitter, morphological analysis and gazetteer lookup).
- Express (Extraction Pattern Recognition Engine and Specification Suite) is an information extraction grammar engine, which consists of a grammar parser and a grammar interpreter.

**Objectives**

We will not managed to do build a full information extraction pipeline within the allocated time (we would need at leat a week!). Here the objective is to **give you an idea** of how things work. We will therefore focus on 2 components: Gazetteers and Grammar, trying to build a small engine to recognize (some) person names.

We will rely on an already compiled tokeniser. You will develop a gazetteer, and 2 or 3 rules using relying on it. Let's get started.



#### 0. Get the libraries

```bash
# sign the NDA

# launch a terminal

# download the jars
[we should not put the links in the notebook]
```



#### 1. Folder structure

In both corleone and express repositories, you will find the following structures:

```bash 
.
├── compiled-resources # this is where your compiled resources will go
├── documentation # user-guide is available here
├── experiments # a playground folder, already with some inputs
│   ├── input
│   └── output
├── resources # the 'row' resources, i.e. gazetteers and grammar file before they get compiled
└── scripts # the scripts to use to compile or apply the components
```



#### 2. Corleone: creating, compiling and applying a gazetteer

As a first exercise, we will try to  produce a small gazetteer for person names.

*The CORLEONE gazetteer look-up (dictionary look-up) component matches an input stream of characters or tokens against a gazetteer (dictionary) list, and produces an adequate annotation for the matched text fragment. It allows for associating each entry in the gazetteer with a list of arbitrary flat attribute-value pairs*. (Corleone documentation, Piskorski, 2018.)

**2.1 Creating a person name gazetteer**

The resources you need to manipulate are under the repository `resources`:

- The **raw gazetteer file**, e.g. `person_name_gazetteer.txt`, is the entry file you need to edit with gazetteers elements. Each line represents a single gazetteer entry in the following format: `keyword (attribute:value)+`. 

```bash
# Example of gazetteer, one entry per line, where the input separator is "|", and the attribute/value separator is ":"
New York | GTYPE:location | SUBTYPE:city | CONTINENT: north america
G. Bush  | GTYPE: person | SUBTYPE: politician | position: president 
# => here we are declaring that the string "New York" has the GTYPE 'location', the SUBTYPE 'city', etc.

# for ambiguous forms, one line per referent:
Washington | GTYPE:city | LOCATION:USA | SUBTYPE:cap_city 
Washington | GTYPE:person | GENDER:m_f 
Washington | GTYPE:organization | SUBTYPE:commercial 
Washington | GTYPE:region | LOCATION:US
```



- The **attribute file** lists all attribute names, where each line stands for a single attribute name. 

  ```bash
  # for our gazetteer above, we need to declare the following types:
  GTYPE
  SUBTYPE
  CONTINENT
  LOCATION
  GENDER
  # => this are the types with which we want to describe our gazetteer entries
  ```



- The **type file** (optional) can be used in order to facilitate more strict encoding of the gazetteer entries in order to specify: (a) an attribute that is used to encode the type of the entry, which has to be provided in all entries in the entry file, and (b) a list of appropriate attributes for each type.

  ```bash
  # for our example above, the type file would contain:
  GTYPE # means that all entries need this type, and they can have 'city', 'person' or 'region' as values
  city location subtype # means that if an entry is of GTYPE person, it can have the 'location' and 'subtype' attributes
  person gender subtype position 
  region location
  
  # this is more specific than the type file, this is to declare the possible values for each type.
  # this is not mandatory, we can skip it for our exercise.
  ```



**Compile a person name gazetteer** 

A very small person name gazetteer already exists. Let's try to use it.

```bash
# go in the resource folder and look at the person_name_gazetteer.txt file
$ cd /rule-based/corleone/resources

# look at the configuration files if you wish: they are already ready, you do not need to edit them

# go in the /scripts folder of corleone
$ cd /rule-based/corleone/scripts

# execute the 'compile component script' with the component alias (basicGazetteer) and the component configuration file (located in the resource folder)
$ ./compileComp.sh basicGazetteer ../resources/person_nameGazetteer.cfg

# go in the compiled resources and check if your compiled component is there
$ cd /rule-base/corleone/compiled-resources
```



**Apply the compiled gazetteer to some inputs**

```bash
# go in the /scripts folder of corleone
$ cd /rule-based/corleone/scripts

# execute the 'apply component script' with the component alias (basicGazetteer) and the component configuration file (located in the resource folder)
$ ./applyComp.sh basicGazetteer ../resources/person_name_gaz_application.cfg

# go in the experiment folder and check the output
$ cd /rule-base/corleone/compiled-resources
```



**Iterate**

Now that you did the first edit-compiling-applying cycle, you can go back to the entry file and add more things if you want. The information you enter will be used by the grammar rules that you will develop next.

