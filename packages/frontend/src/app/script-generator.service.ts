import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environment } from '../environments/environment';

/**
 * REST client for Script Generator Services.
 */
@Injectable({
  providedIn: 'root'
})
export class ScriptGeneratorService {
  constructor(private http: HttpClient) {}

  /**
   * Base url of service to use.
   */
  public baseUrl = environment.apiBaseUrl;

  /**
   * Generate a new script.
   * @param stripePaymentResult Payment information from Stripe.
   */
  public generateNewScript(stripePaymentResult) {
    return this.http
      .post(`${this.baseUrl}/script-generator`, {
        payment: {
          stripe: stripePaymentResult.token
        }
      })
      .toPromise();
  }

  /**
   * Get recently generated script.
   */
  public getRecentlyGenerated() {
    return this.http.get(`${this.baseUrl}/script-generator/recent`).toPromise();
  }

  /**
   * Get generated script by id.
   */
  public ge