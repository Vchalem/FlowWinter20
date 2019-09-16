import { LightningElement, api } from 'lwc';

export default class RichText extends LightningElement {
       @api Input;
        get userInput() {
            return this.Input;
        }
}
