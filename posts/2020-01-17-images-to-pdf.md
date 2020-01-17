---
title: Converting images to pdf
---

Recently I was settling some claims for an event of mine.

While trying to put multiple images together in a pdf, I did some research and
came across imagemagick!

To convert multiple images to a pdf, simply navigate to the root folder,

e.g. if this is the folder:

.                                                                                                        
├── some_image.jpg                                                                               
├── another_image.jpg                                                                               
└── one_more_image.jpg                                                                                        

and run:

> magick *.jpg your_pdf_name.pdf
