import { LightningElement,track } from 'lwc';

export default class HelloWorldLearni extends LightningElement {

   @track greeting="World";
   handlechange(event){
this.greeting=event.target.value;

   }
   


}