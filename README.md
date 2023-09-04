# chopin-opus-64
[LilyPond](https://lilypond.org/) engraving source files used to create Chopin's Three Waltzes, opus 64.

## Creating the PDF and MIDI files
(I highly recommend the [Frescobaldi](https://www.frescobaldi.org/) IDE for LilyPond.  It makes all of the following much easier.)

The PDF and MIDI files can be created by issuing the following command in the directory this file is in (assuming you have `lilypond` in your PATH variable):

        lilypond waltzes-op64-book.ly

To create a smaller PDF, try:

        lilypond -dno-point-and-click waltzes-op64-book.ly

You may also [download the latest release](https://github.com/ksnortum/chopin-opus-64/releases/latest) to get the compiled PDF and MIDI files.

### Programming errors
When you compile (run `lilypond` on) the book or the third waltz source files, you may see this:

        programming error: cyclic dependency: calculation-in-progress encountered for VerticalAxisGroup.adjacent-pure-heights

These warnings can be ignored.

### Two-sided printing
The pieces are set up so that they can be printed on two sides of the paper, leaving an extra margin amount on the inside pages for binding.  If you don't want this, open the file `header-paper.ily`,
find the `\paper` block (in the middle) and set `two-sided = ##f`.

## Thanks
Thanks to [phmcarty](https://github.com/phmccarty) for the proofreading.

## License
This work is licensed under the [Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)](https://creativecommons.org/licenses/by-sa/4.0/) from Creative Commons.  Follow the link for details.  Basically, you can use this work however you want *if* you keep the same license and you attribute the work to me, Knute Snortum (knute (at) snortum (dot) net).

