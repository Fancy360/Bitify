import 'package:fll_pages/textdata/abouttextinfo.dart';
import 'package:flutter/material.dart';

class MA107 extends StatefulWidget {
  @override
  _MA107State createState() => _MA107State();
}

class _MA107State extends State<MA107> {
  List<AboutTextInfo> mod= [
    AboutTextInfo(text: 'Module 1: Sequence and Series',text2: "Sequences, Convergence of Sequence. Series, Convergence of Series, Tests for Convergence: Comparison tests, Ratio test, Cauchy’s root test, Raabe’s test, Gauss test, Cauchy's Integral test,  Alternating series, Leibnitz test, Absolute and Conditional Convergence."),
    AboutTextInfo(text: 'Module 2: Matrices',text2: "Rank of a Matrix, elementary transformations, Row - reduced Echelon form. Vectors, Linear  Independence and Dependence of Vectors. Consistency of system of linear equations.  Eigenvalues, Eigenvectors, Cayley - Hamilton theorem."),
    AboutTextInfo(text: 'Module 3: Advance Differential Calculus',text2: "Function of several variables, Limit, Continuity, Partial derivatives, Euler’s theorem for  homogeneous functions, Total derivatives, Chain rules, Jacobians and its properties, Taylor  series for function of two variables, Maxima – Minima, Lagrange’s method of multipliers."),
    AboutTextInfo(text: 'Module 4: Advance Integral Calculus',text2: "Beta and Gamma functions: definition and properties.  Double integrals, double integrals in polar coordinates, Change of order of integration, Triple  Integrals, cylindrical and spherical coordinate systems, transformation of coordinates,  Applications of double and triple integrals in areas and volumes."),
    AboutTextInfo(text: 'Module 5: Vector Calculus',text2: "Scalar and vector point functions, gradient, directional derivative, divergence, curl, vector  equations and identities. Line Integral, Work done, Conservative field, Green’s theorem in a  plane, Surface and volume integrals, Gauss – divergence theorem, Stoke ’s theorem."),
    AboutTextInfo(text: 'Textbooks:',text2: "• M. D. Weir, J. Hass and F. R. Giordano: Thomas’ Calculus, 11th edition, Pearson Educations,  2008E.\n• H. Anton, I. Brivens and S. Davis, Calculus, 10th Edition, John Wiley and sons, Singapore Pte.  Ltd., 2013.\n• Ramana B.V., Higher Engineering Mathematics, Tata McGraw Hill New Delhi, 11th  Reprint,2010."),
    AboutTextInfo(text: 'Reference books:',text2: "• M. J. Strauss, G. L. Bradley And K. J. Smith, Calculus, 3rd Ed, Dorling.Kindersley (India) Pvt.  Ltd. (P Ed),  Delhi, 2007.  \n• David C. Lay, Linear Algebra and its Applications (3rd Edition), Pearson Ed. Asia,  Indian Reprint, 2007.  \n• Robert Wrede & Murray R. Spiegel, Advanced Calculus, 3rd Ed., Schaum’s outline  series, McGraw-Hill  Companies, Inc.,2010.  \n• D. G. Zill and W.S. Wright, Advanced Engineering Mathematics, Fourth Edition, 2011."),
  ];

  Widget syllabusTemplate(abouttextinfo){
    return Card(
      elevation: 10.0,
      // margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(abouttextinfo.text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
            SizedBox(height: 10.0,),
            Text(abouttextinfo.text2,style: TextStyle(fontSize: 15.0),),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 150.0,
            floating: true,
            // pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Mathematics - I\nMA107'),
            ),
          ),
          SliverList(
            // itemExtent: 80.0,
            delegate: SliverChildListDelegate(
mod.map((abouttextinfo) => syllabusTemplate(abouttextinfo)).toList(),
            ),
          )
        ],
      ),
    );
  }
}
