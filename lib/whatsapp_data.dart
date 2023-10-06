// name , profile pic, msg, time
import 'dart:convert';

class Data {
  var chat = {
    0: [
      'Muhammed Sahal CP',
      'images/boy.png',
      'Hi Developer, How are you',
      '10:30 pm'
    ],
    1: [
      'Rinza ',
      null,
      'I Love You...!',
      '5:00 am',
    ],
    2: [
      'Shinas k',
      'images/user (1).png',
      'Da Thalassery ponna ? verninda vegm vaa ennal....',
      '6:55 pm'
    ],
    3: [
      'Muhammed Rihan CP',
      'images/man (1).png',
      'Hi',
      '1:23 am',
    ],
    4: [
      'Shiza ',
      'images/woman.png',
      'How are you?',
      '5:23 am',
    ],
    5: [
      'Muhammed Nihal CP',
      'images/programmer.png',
      'How are you?',
      '11:23 am',
    ],
    6: [
      'Muhammed Hisham CP',
      'images/bussiness-man.png',
      'Da wer?',
      '11:10 am',
    ],
    7: [
      'Asbah ',
      'images/user (1).png',
      'Progress ?',
      '4:08 pm',
    ],
    8: [
      'Rana ',
      'images/woman.png',
      'Da?',
      '2:23 pm',
    ],
    9: [
      'Afnan ',
      'images/user.png',
      'Da Thalassery ponna ?',
      '6:12 pm',
    ],
    10: [
      'Hanna',
      'images/woman.png',
      'what are you saying did you complete it? ?',
      '6:23 pm',
    ],
  };

  // name, profile pic, no.of divisions, space, time , last tile or not
  var statusList = {
    0: [
      'Asbah HRZ',
      'images/man (1).png',
      3.0,
      4.5,
      '1 minute ago',
      false,
    ],
    1: [
      'Anees HRZ',
      'images/boy.png',
      1.0,
      0.0,
      '43 minutes ago',
      false,
    ],
    2: [
      'Nisham HRZ',
      'images/bussiness-man.png',
      2.0,
      0.0,
      '24 minutes ago',
      false,
    ],
    3: [
      'Labeeb HRZ',
      'images/man.png',
      4.0,
      4.5,
      '3 minute ago',
      false,
    ],
    4: [
      'Ansheer HRZ',
      'images/man (1).png',
      4.0,
      2.5,
      '12 hours ago',
      false,
    ],
    5: [
      'Javad',
      'images/profile.png',
      3.0,
      4.5,
      '12 minutes ago',
      false,
    ],
    6: [
      'Muhammed hrz',
      'images/programmer.png',
      1.0,
      4.5,
      '1 minute ago',
      false,
    ],
    7: [
      'Nisaj',
      'images/man (1).png',
      3.0,
      4.5,
      '43 minutes ago',
      false,
    ],
    8: [
      'Mubash HRZ',
      'images/user.png',
      2.0,
      1.5,
      '56 minutes ago',
      false,
    ],
    9: [
      'Shahl hrz',
      'images/user (1).png',
      1.0,
      0.5,
      '4 minutes ago',
      false,
    ],
  };

  // name  , profile pic , videdo or audio call,  is missed call or not , incoming or out going , time, last value or not
  var calls = {
    0: [
      'Ashbu HRZ',
      'images/man (1).png',
      0,
      false,
      false,
      '1 minute ago',
      false,
    ],
    1: [
      'Anees HRZ',
      'images/boy.png',
      0,
      false,
      true,
      '43 minutes ago',
      false,
    ],
    2: [
      'Nisham HRZ',
      'images/bussiness-man.png',
      1,
      false,
      false,
      '24 minutes ago',
      false,
    ],
    3: [
      'Labeeb HRZ',
      'images/man.png',
      0,
      true,
      true,
      '3 minute ago',
      false,
    ],
    4: [
      'Ansheer HRZ',
      'images/man (1).png',
      0,
      false,
      false,
      '12 hours ago',
      false,
    ],
    5: [
      'Javad',
      'images/profile.png',
      1,
      true,
      true,
      '12 minutes ago',
      false,
    ],
    6: [
      'Muhammed hrz',
      'images/programmer.png',
      0,
      false,
      true,
      '1 minute ago',
      false,
    ],
    7: [
      'Nisaj',
      'images/man (1).png',
      1,
      false,
      false,
      '43 minutes ago',
      false,
    ],
    8: [
      'Mubash HRZ',
      'images/user.png',
      1,
      true,
      false,
      '56 minutes ago',
      false,
    ],
    9: [
      'Shahl hrz',
      'images/user (1).png',
      1,
      true,
      true,
      '4 minutes ago',
      false,
    ],
  };

  // message, who is sender
  var chatMessages = {
    0: [
      'Hey How are you?',
      true,
    ],
    1:[
      'Hey iam fine been a while',
      false,

    ],
    2:[
      'What about rinsa',
      true,

    ],
    3:[
      "She's fine.., brother",
      false,

    ],
    4:[
      'hmm.. where are you now? Bengaluru?'
      ,true,
    ],
    5:[
      'What about Coding?',
      true,

  ],
    6:[
      'ya iam in bengaluru right now.',
      false,

    ],
    7:[
      'Ya Still Coding Happily',
      false,
    ],
    8:[
      'ok bro catch you later',
      true,
    ],
  };
}
