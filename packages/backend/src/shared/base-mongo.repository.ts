
import { MongoConnectionService } from './mongo-connection.service';
import { Injectable } from '@nestjs/common';

/**
 * Base class for MongoDB persistence.
 */
@Injectable()
export abstract class BaseMongoRepository {
  constructor(protected _mongoConnectionService: MongoConnectionService) {}

  /**
   * Get collection instance.
   */
  public abstract get collection();

  /**
   * Find single instance of data by id.
   * @param id Id of instance to find.
   */