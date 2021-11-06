import { Injectable, InternalServerErrorException } from '@nestjs/common';
import { sign } from 'jsonwebtoken';
import { ConfigService } from '../../config/config.service';

export enum Provider {
  GOOGLE = 'google',
  TEST = "test",
}

/**
 * Service providing authentication functionality.
 */
@Injectable()
export class AuthService {
  constructor(private readonly configService: ConfigService) {}

  async validateOAuthLogin(
    