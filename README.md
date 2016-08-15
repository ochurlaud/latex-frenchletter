# French Letter class

This class creates a layout for french formal letters.

## Use

Put the `frenchletter.cls` next to your TeX document and initialize the class with

```
\documentclass[12pt]{frenchletter}
```

In the headers, you can use the functions `\date{}`, `\place{}`, `\signature{}`,
`\object{}`, `\addressTo{}`, `\addressFrom{}` to define the canonical fields of
the letter.

Then you can begin the document
```
\begin{document}
\opening{Dear Sir,}

....

\closing{Best regards,}

```

Everything else is taken care of by the class.

## More info
See the examples to see the class in action.

## License

Licensed WTFPL <http://www.wtfpl.net/>.

See COPYING.
