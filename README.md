# Named Entity Processing for Digital Humanities 
       
DH2019 Tutorial

## Context

Recognition and identification of real-world entities is at the core of virtually any text mining application. As a matter of fact, referential units such as names of persons, locations and organizations underlie the semantics of texts and guide their interpretation. Around since the seminal Message Understanding Conference (MUC) evaluation cycle in the 1990s [1], named entity-related tasks have undergone major evolutions until now, from entity recognition and classification to entity disambiguation and linking [2,3,4,5]. Besides the general domain of well-written newswire data, named entity (NE) processing is also applied on specific domains, particularly bio-medical [6], and on more noisy inputs such as speech transcriptions [7] and tweets [8]. More recently, NE processing has also been called upon to contribute to the domain of digital humanities, where massive digitization of historical documents is producing huge amounts of texts.

De facto, NE processing tools are increasingly being used in the context of historical documents. Research activities in this domain target texts of different nature (e.g., publications by cultural institutions, state-related documents, genealogical data, historical newspapers) and different tasks (NE recognition and classification, entity linking, or both). Experiments involve different time periods (from 16th to 20th c.), focus on different domains, and use different typologies. This great variety demonstrates how many and varied the needs – and the challenges – are, but makes performance comparison difﬁcult, not to say impossible. Compared to the standard analysis of present-time English, very often news, the application of NE tools on historical texts faces news challenges, which can be deﬁned as follows: (i) noisy input texts, (ii) lack of coverage in linguistic resources and knowledge bases, and (iii) dynamics of language [9].

## Objective

The objective of the tutorial is to provide the participants with essential knowledge with respect to a) NE processing in general and in DH, and b) how to apply NE recognition approaches. To this end, the session will be organized in two parts, theory and hands-on.

Throughout the sessions, the audience will learn about:
- the origins of named entity processing
- the resources needed for their processing
- the evaluation protocols
- the tools and algorithms used for their recognition, classification and disambiguation.

Participants will also learn how to run an existing NER system and, more interestingly, how to build or adapt a system, by training it on historical materials. Two main approaches will be considered:
- rule-based
- deep-learning

## Material

In the hands-on session we will make use of two datasets consisting of historical texts:
1. Quaero Dataset (French historical newspapers of the end of the XIX c.)
2. impresso dataset (Swiss and Luxembourgish historical newspapers in French and German).

Additionally, we will provide a list of alternative datasets, both historical and contemporary, that participants can decide to work with, in full respect of copyrights. Finally, participants are welcome to bring to the workshop their own datasets in order to apply the code and tools we will present to them.

## Detailed program

*to come soon!*

## Technical set-up

Hands-on material will be shared on GitHub and will include:
- Jupyter notebooks with explanations and code examples; if relevant, we will set up a multi user environment (Jupyter Hub) in order to reduce system setup time during the tutorial;
- a bibliography on the topic;
- a list of of available open source academic and industrial tools;
- slides of the tutorial.

## Instructors

- Maud Ehrmann (École polytechnique fédérale de Lausanne, DHLAB)
- Matteo Romanello (École polytechnique fédérale de Lausanne, DHLAB)
- Simon Clematide (University of Zurich, Institute of Computational Linguistics)

## References

[1] R. Grishman and B. Sundheim. 1996. [*Message Understanding Conference - 6: A brief history*](https://www.aclweb.org/anthology/C96-1079). In Proceedings of the 16th Conference on Computational Linguistics - Volume 1, COLING ’96, pages 466–471, Stroudsburg, PA, USA. Association for Computational Linguistics.

[2] D. Nadeau and S. Sekine. 2007. [*A survey of named entity recognition and classification*](https://www.jbe-platform.com/content/journals/10.1075/li.30.1.03nad). Lingvisticae Investigationes, 30(1):3–26.

[3] D. Rao, P. McNamee, and M. Dredze, 2013. Multisource, Multilingual Information Extraction and Summarization, chapter *Entity Linking: Finding Extracted Entities in a Knowledge Base*. Pages 93–115. Springer Berlin Heidelberg, Berlin, Heidelberg.

[4] D. Nouvel, M. Ehrmann, S. and Rosset. 2015. *Les Entités Nommées pour le Traitement Automatique des Langues*, ISTE edition.

[5] M. Ehrmann, D. Nouvel, and S. Rosset. 2016. [*Named Entities Resources - Overview and Outlook*](https://infoscience.epfl.ch/record/218493). In N. Calzolari Conference Chair, K. Choukri, T. Declerck, M. Grobelnik, B. Maegaard, J. Mariani, A. Moreno, J. Odijk, and S. Piperidis, editors, Proceedings of the 10th International Conference on Language Resources and Evaluation, Portoro, Slovenia, May 2016.

[6] J.D. Kim, T. Ohta, Y. Tateisi, and J. Tsujii. 2003. *Genia corpus, a semantically annotated corpus for bio-text mining*. Bioinformatics, 19(suppl 1):180–182.

[7] O. Galibert, J. Leixa, G. Adda, K. Choukri, and G. Gravier. 2014. *The ETAPE speech processing evaluation*. In Proc. of the 9th International Conference on Language Resources and Evaluation (LREC’09), Reykjavik, Iceland.

[8] A. Ritter, S. Clark, M. Etzioni, and O. Etzioni. 2011. *Named Entity Recognition in Tweets: An Experimental Study*. In Proceedings of the Conference on Empirical Methods in Natural Language Processing, EMNLP ’11, pages 1524–1534, Stroudsburg, PA, USA. Association for Computational Linguistics.

[9] M. Ehrmann, G. Colavizza, Y. Rochat, Y. and F. Kaplan. 2016. [*Diachronic evaluation of NER systems on old newspapers*](https://infoscience.epfl.ch/record/221391). In Proceedings of the 13th Conference on Natural Language Processing (KONVENS 2016) (No. EPFL-CONF-221391, pp. 97-107). Bochumer Linguistische Arbeitsberichte.

[10] O. Galibert, S. Rosset, C. Grouin, P. Zweigenbaum and L. Quintard. 2012. [*Extended Named Entity Annotation on OCRed Documents: From Corpus Constitution to Evaluation Campaign*](http://www.lrec-conf.org/proceedings/lrec2012/summaries/343.html). In Proceedings of the Eight International Conference on Language Resources and Evaluation (LREC'12), Istanbul, Turkey.
