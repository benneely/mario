/****************************************************************
PROGRAM NAME: 	mario.sas
PROGRAMMER:		Ben Neely	
CREATION DATE:  Thursday, February 18, 2010 17:08:26
ASSUMPTIONS:	Run on PC SAS

******************************************************************/

/* Following Macro Found at http://www2.sas.com/proceedings/sugi29/048-29.pdf */
%let pc=1.25;
%macro df3(note,octave,length);
select(&note.);
when('A') call sound(55*(2**&octave.),&length.*160*&pc.);
when('A#') call sound(58*(2**&octave.),&length.*160*&pc.);
when('Bb') call sound(58*(2**&octave.),&length.*160*&pc.);
when('B') call sound(62*(2**&octave.),&length.*160*&pc.);
when('C') call sound(65*(2**&octave.),&length.*160*&pc.);
when('C#') call sound(69*(2**&octave.),&length.*160*&pc.);
when('Db') call sound(69*(2**&octave.),&length.*160*&pc.);
when('D') call sound(73.5*(2**&octave.),&length.*160*&pc.);
when('D#') call sound(73.5*(2**&octave.),&length.*160*&pc.);
when('Eb') call sound(78*(2**&octave.),&length.*160*&pc.);
when('E') call sound(82*(2**&octave.),&length.*160*&pc.);
when('F') call sound(87*(2**&octave.),&length.*160*&pc.);
when('F#') call sound(92.5*(2**&octave.),&length.*160*&pc.);
when('Gb') call sound(92.5*(2**&octave.),&length.*160*&pc.);
when('G') call sound(98*(2**&octave.),&length.*160*&pc.);
when('G#') call sound(104*(2**&octave.),&length.*160*&pc.);
when('Ab') call sound(104*(2**&octave.),&length.*160*&pc.);
when('R') call sleep((&length./3)*&pc.,1);
otherwise;
end;
%mend;

/* Song Written By Nigel Neely*/

data _null_;

	%df3('E',3,.5);
	%df3('E',3,.5);
	%df3('R',3,.5);
	%df3('E',3,1);
	%df3('C',3,1);
	%df3('E',3,.5);
	%df3('G',3,1);
	%df3('R',1,.5);
	%df3('G',2,1);
	/* Second Part */
	%df3('C',3,1.5);
	%df3('G',2,.5);
	%df3('E',2,1.5);
	%df3('A',3,1);
	%df3('B',3,1);
	%df3('Bb',3,.5);
	%df3('A',3,1);
	%df3('G',2,1);
	%df3('E',3,1);
	%df3('G',3,1);
	%df3('A',4,1);
	%df3('F',3,.5);
	%df3('G',3,.5);
	%df3('E',3,1);
	%df3('C',3,.5);
	%df3('D',3,.5);
	%df3('B',3,1.5);
	%df3('C',3,1.5);
	%df3('G',3,.5);
	%df3('E',2,1.5);
	%df3('A',3,1);
	%df3('B',3,1);
	%df3('Bb',3,.5);
	%df3('A',3,1);
	%df3('E',3,1);
	%df3('G',3,1);
	%df3('A',4,1);
	%df3('F',3,.5);
	%df3('G',3,.5);
	%df3('E',3,1);
	%df3('C',3,.5);
	%df3('D',3,.5);
	%df3('B',3,1.5);
	%df3('G',3,.5);
	%df3('F#',3,.5);
	%df3('F',3,.5);
	%df3('D#',3,1);
	%df3('E',3,.5);
	%df3('G#',2,.5);
	%df3('A',3,.5);
	%df3('C',3,.5);
	%df3('A',3,.5);
	%df3('C',3,.5);
	%df3('D',3,.5);
	/* bar 13 */
	%df3('G',3,.5);
	%df3('F#',3,.5);
	%df3('F',3,.5);
	%df3('D#',3,1);
	%df3('E',3,.5);
	%df3('G',3,1);
	%df3('G',3,.5);
	%df3('G',3,2);
	/* bar 15 */
	/* bar 72 */
	%df3('A',3,.5);
	%df3('F',3,1);
	%df3('F',3,.5);
	%df3('A',3,2);

	%df3('B',3,.666);
	%df3('A',4,.666);
	%df3('A',4,.666);
	%df3('A',4,.666);
/*	%df3('G',4,.666);*/
run;



