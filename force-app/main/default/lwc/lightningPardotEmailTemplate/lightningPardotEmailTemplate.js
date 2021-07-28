import { LightningElement, api } from 'lwc';

export default class LightningPardotEmailTemplate extends LightningElement {
    @api
    set htmlValue(value) {
        if (this.customHtml) {
            this.customHtml.innerHTML = value
        }
        this._htmlValue = value
    }
    get htmlValue() {
        return this._htmlValue
    }

    isActive      = false

    initializeComponent() {
        const VERSION = 1.1

        this.customHtml             = this.template.querySelector('div.lightningpardotemailtemplate')
        this.customHtml.innerHTML   = this.htmlValue

        console.log(`[INFO] LightningPardotEmailTemplate INIT ${VERSION}`)
    }
    
    renderedCallback() {
        if( this.isActive ) { return }
        this.isActive = true

        this.initializeComponent()
    }
}